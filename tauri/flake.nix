{
  description = "Tauri Javascript App";

  inputs = {
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, fenix }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ fenix.overlay ];
        };
        toolchain = pkgs.fenix.complete;
        buildInputs = with pkgs; [
          # js
          yarn

          # rust
          (with toolchain; [
            cargo
            rustc
            rust-src
            clippy
            rustfmt
          ])
          pkg-config
          openssl

          # tauri
          webkitgtk
          dbus
        ];
      in
      rec {

        # Executed by `nix build`
        packages.default = pkgs.mkYarnPackage rec {
          inherit buildInputs;
          name = "template";
          src = ./.;

          buildPhase = "yarn build";

          installPhase = ''
            mkdir -p $out/bin

            cp src-tauri/target/release/${name} $out/bin/${name}
          '';
        };

        # Executed by `nix run`
        apps.default = utils.lib.mkApp {
          drv = packages.default;
        };

        # Used by `nix develop`
        devShell = pkgs.mkShell {
          inherit buildInputs;

          # Specify the rust-src path (many editors rely on this)
          RUST_SRC_PATH = "${toolchain.rust-src}/lib/rustlib/src/rust/library";
        };

      });
}

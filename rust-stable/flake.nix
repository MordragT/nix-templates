{
  description = "Rust development template";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, fenix, ... }:
    utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
          toolchain = pkgs.rustPlatform;
        in
        rec
        {
          # Executed by `nix build`
          packages.default = toolchain.buildRustPackage {
            pname = "template";
            version = "0.1.0";
            src = ./.;
            cargoLock.lockFile = ./Cargo.lock;

            # For other makeRustPlatform features see: 
            # https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/rust.section.md#cargo-features-cargo-features
          };

          # Executed by `nix run`
          apps.default = utils.lib.mkApp { drv = packages.default; };

          # Used by `nix develop`
          devShells.default = pkgs.mkShell {

            # Use nightly cargo & rustc provided by fenix. Add for packages for the dev shell here
            buildInputs = with pkgs; [
              (with toolchain; [
                rust.cargo
                rust.rustc
                rustLibSrc
              ])
              clippy
              rustfmt
              pkg-config
            ];

            # Specify the rust-src path (many editors rely on this)
            RUST_SRC_PATH = "${toolchain.rustLibSrc}";
          };
        }
      );
}

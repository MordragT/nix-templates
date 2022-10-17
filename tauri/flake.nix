{
  description = "Tauri Javascript App";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        name = "template";

        buildInputs = with pkgs; [
          # js
          yarn

          # rust
          cargo
          pkg-config
          openssl

          # tauri
          webkitgtk
          dbus
        ];
      in
      rec {

        apps.${name} = utils.lib.mkApp {
          drv = packages.${name};
        };
        apps.default = apps.${name};

        packages.${name} = pkgs.mkYarnPackage {
          inherit name;

          nativeBuildInputs = buildInputs;

          src = ./.;

          buildPhase = "yarn build";

          installPhase = ''
            mkdir -p $out/bin

            cp src-tauri/target/release/tauri-app $out/bin/${name}
          '';
        };
        packages.default = packages.${name};

        devShell = pkgs.mkShell {
          inherit buildInputs;
        };

      });
}

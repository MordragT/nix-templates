{
  description = "Tauri Javascript App";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.mkYarnPackage {
          pname = "slides-fh";
          src = ./.;

          nativeBuildInputs = with pkgs; [ makeWrapper ];

          postInstall = ''
            mkdir -p $out/bin

            cat << EOF > $out/bin/slides-fh
            #!${pkgs.bash}/bin/bash
            VITE_MD=\$1 $out/libexec/slides-fh/deps/slides-fh/node_modules/.bin/vite
            EOF

            chmod 755 $out/bin/slides-fh
          '';
        };

        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            yarn
            sass
          ];
        };
      });
}

{
  description = "A C++ template using cmake for nix";

  inputs.utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "template";
          version = "0.1.0";

          src = ./.;

          nativeBuildInputs = with pkgs; [
            cmake
          ];

          buildInputs = [];

          cmakeFlags = [];

          meta = with pkgs.lib; {
            homepage = "https://github.com/MordragT/nix-templates/tree/master/cpp";
            description = "A C++ template using cmake for nix";
            licencse = licenses.mit;
            platforms = platforms.all;
            maintainers = with maintainers; [mordrag];
          };
        };

        devShells.default = pkgs.mkShell rec {
          buildInputs = with pkgs; [
            just
            stdenv.cc.cc
            cmake
          ];

          LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
        };
      }
    )
    // {
      overlays.default = self: pkgs: {
        hello = self.packages."${pkgs.system}".hello;
      };
    };
}

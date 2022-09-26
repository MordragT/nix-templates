{
  description = "Tauri Javascript App";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; };

      # name = "template";
    in rec {

      # apps.${name} = utils.lib.mkApp {
      #   drv = packages.${name};
      # };
      # apps.default = apps.${name};

      # packages.${name} = pkgs.mkYarnPackage {
      #   inherit name;
      # };
      # packages.default = packages.${name};

      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          yarn
        ];
      };

    });
}
{
  description = "Deno Javascript App";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    deno2nix = {
      url = "github:SnO2WMaN/deno2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, utils, deno2nix }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ deno2nix.overlay ];
      };

      name = "template";
    in rec {

      apps.${name} = utils.lib.mkApp {
        drv = packages.${name};
      };
      apps.default = apps.${name};

      packages.${name} = pkgs.deno2nix.mkExecutable {
        inherit name;

        src = self;
        version = "0.1.0";
        lockfile = ./lock.json;
        importMap = ./import_map.json;
        entrypoint = ./src/index.ts;
      };
      packages.default = packages.${name};

      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          deno
          just
        ];
      };

    });
}
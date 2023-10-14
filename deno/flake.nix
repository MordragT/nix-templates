{
  description = "Deno Javascript App";

  inputs = {
    utils.url = "github:numtide/flake-utils";
    deno2nix = {
      url = "github:SnO2WMaN/deno2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    deno2nix,
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [deno2nix.overlays.default];
      };
    in rec {
      apps.default = utils.lib.mkApp {
        drv = packages.default;
      };

      packages.default = pkgs.deno2nix.mkExecutable {
        pname = "template";
        version = "0.1.0";

        src = ./.;
        lockfile = "./lock.json";
        config = "./deno.jsonc";
        entrypoint = "./src/index.ts";
      };

      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          deno
          just
        ];
      };
    });
}

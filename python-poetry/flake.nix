{
  description = "Poetry python application";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    ...
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};

      python = pkgs.python3;
      projectDir = ./.;
      overrides = pkgs.poetry2nix.overrides.withDefaults (final: prev: {
        # Python dependency overrides go here
      });
    in {
      packages.default = pkgs.poetry2nix.mkPoetryApplication {
        inherit python projectDir overrides;
        # Non-Python runtime dependencies go here
        propogatedBuildInputs = [];
      };

      devShell = pkgs.mkShell {
        buildInputs = [
          (pkgs.poetry2nix.mkPoetryEnv {
            inherit python projectDir overrides;
          })
          pkgs.poetry
        ];
      };
    });
}

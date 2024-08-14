{
  description = "Python development template";

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
      pythonPkgs = pkgs.python3Packages;
    in {
      packages.default = pythonPkgs.buildPythonPackage {
        pname = "package";
        version = "0.1.0";
        format = "pyproject";

        src = ./.;

        build-system = [pythonPkgs.hatchling];

        dependencies = with pythonPkgs; [
          # Python dependencies
          numpy
        ];

        buidInputs = with pkgs; [
          # Non Python dependencies
        ];
      };

      devShells.default = pkgs.mkShell {
        inputsFrom = [self.packages.${system}.default];
      };
    });
}

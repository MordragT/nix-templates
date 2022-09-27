{
  description = "Your Python Jupyter Project";

  inputs.utils.url = "github:numtide/flake-utils";
  inputs.jupyterWith.url = "github:tweag/jupyterWith/main";

  outputs =
    { self
    , nixpkgs
    , utils
    , jupyterWith
    }:
    utils.lib.eachDefaultSystem (system:
    let
      inherit (jupyterWith.lib.${system}) mkJupyterlabEnvironmentFromPath;
      jupyterEnvironment = mkJupyterlabEnvironmentFromPath ./kernels;
      pkgs = import nixpkgs { inherit system; };
    in
    rec {
      packages = { inherit jupyterEnvironment; };
      packages.default = jupyterEnvironment;

      apps.default = utils.lib.mkApp
        {
          drv = jupyterEnvironment;
          name = "jupyter-lab";
        };

      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          jupyterEnvironment
          pandoc
          tectonic
          biber
          just
        ];
      };
    });
}

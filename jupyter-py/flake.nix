{
  description = "Your Python Jupyter Project";

  inputs = {
    utils.url = "github:numtide/flake-utils";
    jupyterWith = {
      url = "github:tweag/jupyterWith";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self
    , nixpkgs
    , utils
    , jupyterWith
    }:
    utils.lib.eachDefaultSystem (system:
    let
      inherit (jupyterWith.lib.${system}) mkJupyterlabFromPath;
      jupyterlab = mkJupyterlabFromPath ./kernels { inherit pkgs; };
      pkgs = import nixpkgs { inherit system; };
    in
    rec {
      packages = { inherit jupyterlab; };
      packages.default = jupyterlab;

      apps.default = utils.lib.mkApp
        {
          drv = jupyterlab;
          name = "jupyter-lab";
        };

      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          jupyterlab
          pandoc
          tectonic
          biber
          just
        ];
      };
    });
}

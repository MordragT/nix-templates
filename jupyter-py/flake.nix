{
  description = "Your Python Jupyter Project";

  nixConfig.extra-substituters = [
    "https://tweag-jupyter.cachix.org"
  ];
  nixConfig.extra-trusted-public-keys = [
    "tweag-jupyter.cachix.org-1:UtNH4Zs6hVUFpFBTLaA4ejYavPo5EFFqgd7G7FxGW9g="
  ];

  inputs = {
    utils.url = "github:numtide/flake-utils";
    jupyterWith = {
      url = "github:tweag/jupyterWith";
      #inputs.nixpkgs.follows = "nixpkgs";
    };
    compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs =
    { self
    , nixpkgs
    , utils
    , jupyterWith
    , compat
    }:
    utils.lib.eachDefaultSystem (system:
    let
      inherit (jupyterWith.lib.${system}) mkJupyterlabFromPath;
      jupyterlab = mkJupyterlabFromPath ./kernels { inherit system; };
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

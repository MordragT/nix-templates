{
  description = "Python environment using micromamba";

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
      python-env = pkgs.buildFHSUserEnv {
        name = "python-env";
        targetPkgs = pkgs:
          with pkgs; [
            micromamba
            just
          ];
        profile = ''
          export PATH=${pkgs.vscodium.fhs}/bin:$PATH
          export MAMBA_ROOT_PREFIX=./.mamba

          eval "$(micromamba shell hook -s bash)"

          if [ ! -d $MAMBA_ROOT_PREFIX ]; then
            micromamba create -f env.yml
          fi
          micromamba activate python-env
        '';
      };
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          python-env
        ];
      };
    });
}

{
  description = "A svelte tailwind development flake";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        # Used by `nix build`
        packages.default = pkgs.buildNpmPackage {
          pname = "webserver";
          version = "0.1.0";
          src = ./.;
          npmDepsHash = "sha256-avklzMz/OKjKGXYkWtlbZf9cUT0TbiGq9X+nj/+hjCw=";
          installPhase = ''
            cp -r build $out
          '';
        };

        # Used by `nix develop`
        devShells.default = pkgs.mkShell rec {
          buildInputs = with pkgs; [
            nodejs
          ];

          LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
        };
      }
    )
    // {
      nixosModules.default = {
        config,
        lib,
        pkgs,
        ...
      }:
        with lib; let
          name = "svelte-caddy";
          cfg = config.services.${name};
        in {
          options.services.${name} = {
            enable = mkEnableOption "Enables the Svelte Caddy service";

            fqdn = mkOption {
              type = types.str;

              default = "localhost:3232";
            };
          };

          config = mkIf cfg.enable {
            services.caddy = {
              enable = true;

              virtualHosts.${cfg.fqdn}.extraConfig = ''
                root * ${self.packages.${pkgs.system}.default}
                encode gzip
                file_server

                handle_errors {
                  respond "{err.status_code} {err.status_text}"
                }
              '';
            };
          };
        };
    };
}

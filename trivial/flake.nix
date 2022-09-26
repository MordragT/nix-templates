{
  description = "A very basic flake";

  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; }; in rec
      {

        # Executed by `nix build .#hello`
        packages.hello = pkgs.hello;
        # Executed by `nix build`
        packages.default = packages.hello;

        # Executed by `nix run .#hello`
        apps.hello = utils.lib.mkApp { drv = packages.hello; };
        # Executed by `nix run`
        apps.default = apps.hello;

        overlays.hello = self: pkgs: {
          hello = pkgs.callPackage packages.hello;
        };
        overlays.default = overlays.hello;

        # Used by `nix develop .#hello`
        devShells.hello = pkgs.mkShell rec {
          buildInputs = with pkgs; [ ];

          LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
        };
        # Used by `nix develop`
        devShells.default = devShells.hello;
      }
    );
}

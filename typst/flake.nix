{
  description = "A typst typewriting flake";

  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; }; in
      rec
      {
        devShells.default = pkgs.mkShell rec {
          buildInputs = with pkgs; [
            typst
            hayagriva
            just
          ];

          LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
        };
      }
    );
}

{
  description = "Platformio development shell";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            ccls # c language server powered by clang
            python3
            platformio
            stlink
            openocd
            just
            stm32cubemx
            saleae-logic-2
            gcc-arm-embedded
          ];
        };
      });
}

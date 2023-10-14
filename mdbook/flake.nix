{
  description = "A mdbook template";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem
    (system: let
        pkgs = import nixpkgs {inherit system;};
        pname = "template";
        version = "0.1.0";
      in rec
      {
        # `nix build`
        packages.default =
          pkgs.stdenv.mkDerivation
          rec {
            inherit pname version;

            src = ./.;

            nativeBuildInputs = with pkgs; [
              mdbook-katex
              mdbook-mermaid
              makeWrapper
            ];

            buildPhase = with pkgs; ''
              ${mdbook-mermaid}/bin/mdbook-mermaid install
              ${mdbook}/bin/mdbook build
            '';

            installPhase = let
              desktop = pkgs.makeDesktopItem {
                name = pname;
                desktopName = "My ${pname}";
                exec = "open-${pname}";
                icon = "book";
              };
            in ''
              mkdir -p $out/share/doc/${pname} $out/share/applications $out/share/icons/hicolor/scalable/apps

              cp book/favicon.svg $out/share/icons/hicolor/scalable/apps/book.svg
              cp -r book/* $out/share/doc/${pname}

              makeWrapper ${pkgs.xdg-utils}/bin/xdg-open $out/bin/open-${pname} --add-flags $out/share/doc/${pname}/index.html

              cp ${desktop}/share/applications/* $out/share/applications
            '';
          };

        # `nix run`
        apps.default =
          utils.lib.mkApp
          {
            drv = packages.default;
            name = "open-${pname}";
          };

        # `nix develop`
        devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            mdbook-mermaid
            mdbook-katex
            mdbook
          ];
        };
      });
}

{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {
      rust = {
        path = ./rust;
        description = "Rust development template using fenix";
      };

      python = {
        path = ./python;
        description = "Python development template using poetry2nix";
      };

      deno = {
        path = ./deno;
        description = "Deno runtime development template using deno2nix";
      };

      slides = {
        path = ./slides;
        description = "Presentation development template using reveal.js";
      };

      trivial = {
        path = ./trivial;
        description = "Simple template using flake-utils";
      };
    };
  };
}

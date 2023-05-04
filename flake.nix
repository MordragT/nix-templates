{
  description = "A collection of flake templates";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          just
        ];
      };

      templates = {
        android = {
          path = ./android;
          description = "Android development template without android studio";
          welcomeText = ''
            You have created a Android template that will help you develop android
            applications without Android Studio. See the README for instructions on
            how to use the template.
          '';
        };

        angular = {
          path = ./angular;
          description = "Angular development template";
          welcomeText = ''
            You have created an Angular template that will help you develop your
            frontend application. See the README for further instructions.
          '';
        };

        deno = {
          path = ./deno;
          description = "Deno runtime development template using deno2nix";
          welcomeText = ''
            You have created a Javascript template that will help you manage
            your Deno project. See the README for instructions on how to
            use the template.
          '';
        };

        kotlin = {
          path = ./kotlin;
          description = "Kotlin development template using gradle";
          welcomeText = ''
            You have created a Kotlin template that will help you manage
            your Gradle project. See the README for instructions on how to
            use the template.
          '';
        };

        mdbook = {
          path = ./mdbook;
          description = "mdbook template for nix";
          welcomeText = ''
            You have created a mdbook template that will help you spin up
            your book. See the README for further information.
          '';
        };

        python-micromamba = {
          path = ./python-micromamba;
          description = "Python development template using micromamba";
          welcomeText = ''
            You have created a Python template that will help you manage
            your project. See the README for instructions on how to use
            the template.
          '';
        };

        python-poetry = {
          path = ./python-poetry;
          description = "Python development template using poetry2nix";
          welcomeText = ''
            You have created a Python template that will help you manage
            your Poetry project. See the README for instructions on how to
            use the template.
          '';
        };

        rust-stable = {
          path = ./rust-stable;
          description = "Rust development template";
          welcomeText = ''
            You have created a Rust template that will help you manage
            your project. See the README for instructions on how to use
            the template.
          '';
        };

        rust-nightly = {
          path = ./rust-nightly;
          description = "Rust development template using fenix";
          welcomeText = ''
            You have created a Rust template that will help you manage
            your project. See the README for instructions on how to use
            the template.
          '';
        };

        slides = {
          path = ./slides;
          description = "Presentation development template using reveal.js";
          welcomeText = ''
            You have created a Reveal.js template that will help you manage
            your presentation. See the README for instructions on how to
            use the template.
          '';
        };

        slides-fh-aachen = {
          path = ./slides-fh-aachen;
          description = "Presentation development template using reveal.js with FH Aachen theme";
          welcomeText = ''
            You have created a Reveal.js template that will help you manage
            your presentation. See the README for instructions on how to
            use the template.
          '';
        };

        stm32-platformio = {
          path = ./stm32-platformio;
          description = "Development shell and template for platformio with stm32f4";
          welcomeText = ''
            You have created a platformio template that will help you develop
            applications for your stm32f4 board. See the README for instructions on how
            to use the tempalte.
          '';
        };

        svelte-tailwind = {
          path = ./svelte-tailwind;
          description = "Svelte development template with tailwind.css";
          welcomeText = ''
            You have created a Svelte template that will help you manage
            your project. See the README for instructions on how to
            use the template.
          '';
        };

        tauri = {
          path = ./tauri;
          description = "Tauri development template";
          welcomeText = ''
            You have created a Tauri template that will help you manage
            your Application project. See the README for instructions on
            how to use the template.
          '';
        };

        tex = {
          path = ./tex;
          description = "Tex template for nix using tectonic";
          welcomeText = ''
            You have created a Tex template that will help you manage your
            document. See the README for further information.
          '';
        };

        trivial = {
          path = ./trivial;
          description = "Simple template using flake-utils";
        };

        typst = {
          path = ./typst;
          description = "Typst template for markup based typewriting";
          welcomeText = ''
            You have created a Typst template that will help you manage your
            document. See the README for further information.
          '';
        };
      };
    };
}

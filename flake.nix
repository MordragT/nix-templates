{
  description = "A collection of flake templates";

  outputs = { self }: {

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

      rust = {
        path = ./rust;
        description = "Rust development template using fenix";
        welcomeText = ''
          You have created a Rust template that will help you manage
          your project. See the README for instructions on how to use
          the template.
        '';
      };

      python = {
        path = ./python;
        description = "Python development template using poetry2nix";
        welcomeText = ''
          You have created a Python template that will help you manage
          your Poetry project. See the README for instructions on how to
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

      jupyter-py = {
        path = ./jupyter-py;
        description = "Jupyter development template for Python using JupyterWith";
        welcomeText = ''
          You have created a Jupyter Python template that will help you
          manage your notebooks. See the README for instructions on how to
          use the template.
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

      tauri = {
        path = ./tauri;
        description = "Tauri development template";
        welcomeText = ''
          You have created a Tauri template that will help you manage
          your Application project. See the README for instructions on
          how to use the template.
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

      tex = {
        path = ./tex;
        description = "Tex template for nix using tectonic";
        welcomeText = ''
          You have created a Tex template that will help you manage your
          document. See the README for further information.
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

      svelte-tailwind = {
        path = ./svelte-tailwind;
        description = "Svelte development template with tailwind.css";
        welcomeText = ''
          You have created a Svelte template that will help you manage
          your project. See the README for instructions on how to
          use the template.
        '';
      };

      trivial = {
        path = ./trivial;
        description = "Simple template using flake-utils";
      };
    };
  };
}

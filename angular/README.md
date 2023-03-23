<div align=center>

# ❄️ nix-template-angular 🅰️

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal Angular development template for **Nix**

</div>

## About

This is a minimal template to create frontend applications with Angular.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#angular
```

## Usage

- `nix develop`: opens up a `bash` shell with angular-cli
- `ng new .`: creates a new app in this directory
- `ng serve --open`: launches the server, watches for changes and opens the website in your browser

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
2. [angular/docs](https://angular.io/docs)
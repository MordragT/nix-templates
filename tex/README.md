<div align=center>

# ❄️ nix-template-tex 📜

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal Tex development template for **Nix**

</div>

## About

This is a minimal template to create a journals or books with LaTeX.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#android
```

## Usage

- `nix develop`: opens up a `bash` shell with tectonic
- `just build`: builds the Tex document into an pdf
- `just watch`: watches for changes

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
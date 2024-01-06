<div align=center>

# ❄️ nix-template-cpp 🚀

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

C++ development template for **Nix**

</div>

## About

This is a C++ development template using cmake for nix flakes.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#cpp
```

## Usage

- `nix develop`: opens up a `bash` shell with the specified packages
- `nix build` : builds the package to the symbolic `result` directory
- `nix run`: runs the package

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)

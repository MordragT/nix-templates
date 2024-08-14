<div align=center>

# ❄️ nix-template-python ⚕️

[![NixOS](https://img.shields.io/badge/Made_for-Python-blue.svg?logo=python&style=for-the-badge)](https://www.python.org/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 


Minimal **Python** development template for **Nix**

</div>

## About

This is a minimal template for Python development using just Nix.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#python
```

## Usage

- `nix develop`: opens up a `bash` shell with the declared python packages
- `nix build`: builds your python application

## Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
2. [wiki/python](https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/python.section.md)

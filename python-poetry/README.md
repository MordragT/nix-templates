<div align=center>

# ❄️ nix-template-python-poetry 🐍

[![NixOS](https://img.shields.io/badge/Made_for-Python-blue.svg?logo=python&style=for-the-badge)](https://www.python.org/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 


Minimal **Python** development template for **Nix**

</div>

## About

This is a minimal template for Python development with Poetry. 

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#python-poetry
```

## Usage

- `nix develop`: opens up a `bash` shell with the poetry package
- `nix build` : builds the Python project. Outputs the scripts defined in the `pyproject.toml` to `./result/bin/<name>`
- `nix run`: runs the Python program.


## Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
2. [Poetry](https://python-poetry.org/) - used for python package management
3. [Poetry2Nix](https://github.com/nix-community/poetry2nix) - used to convert poetry projects into nix packages



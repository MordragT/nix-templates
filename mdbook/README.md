<div align=center>

# ❄️ nix-template-mdbook 📚

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal **mdbook** development template for **Nix**

</div>

## About

This is a minimal template for writing books in Markdown. 

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#mdbook
```

## Usage

- `nix develop`: opens up a `bash` shell with the mdbook commands
- `nix build` : builds the book to the symbolic `result` directory
- `nix run`: opens the book in your browser


## Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
2. [mdbook Documentation](https://rust-lang.github.io/mdBook/) - Read for information about mdbook
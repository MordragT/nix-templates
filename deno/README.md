<div align=center>

# ❄️ nix-template-deno 🦖

[![Javascript](https://img.shields.io/badge/Made_for-javascript-yellow.svg?logo=javascript&style=for-the-badge)](https://www.javascript.com/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal **Deno** development template for **Nix**

</div>

## About

This is a minimal template for JavasScript development with Deno.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#android
```

## Usage

- `nix develop`: opens up a `bash` shell with the required packages
- `nix build` : builds the Deno project.
- `nix run`: runs the Deno program.

## Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
2. [Deno](https://deno.land/) - used as JS and TS runtime
3. [Deno2Nix](https://github.com/SnO2WMaN/deno2nix) - used to convert Deno projects into Nix derivations



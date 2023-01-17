<div align=center>

# ❄️ nix-template-svelte-template 🚀

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal development template for svelte

</div>

## About

This is a minimal template to create websites with svelte and tailwind.

## Initialization

See the parent README for further instructions, but you can initialize this template
with the following command in your current directory.

```bash
nix flake init -t github:MordragT/nix-templates#android
```

## Usage

- `nix develop`: opens up a `bash` shell with the specified packages
- `nix build` : builds the package to the symbolic `result` directory
- `npm install`: installs all the necessary packages
- `npm dev`: opens the website in the browser
- You can also add this template to your nixos configuration to deploy the webiste with caddy

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)
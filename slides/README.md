<div align=center>

# ❄️ nix-template-slides 🗒️

[![NixOS](https://img.shields.io/badge/Made_for-javascript-yellow.svg?logo=javascript&style=for-the-badge)](https://www.javascript.com/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal **Slides** template for **Nix**

</div>

#### Who is this for

- Someone who wants to create presentations on NixOS
- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)❗Read the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)❗
2. [Reveal.js](https://revealjs.com/) - javascript presentation framework

#### So how do I use it ??

Click on the `Use this template` button (https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
and run `nix flake update .` to update the flake lock

#### Commands

- `nix develop`: opens up a `bash` shell with the poetry package
- `nix build` : builds the Deno project.
- `nix run`: runs the Deno program.

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support

Consider starring the repo ⭐🗒️

#### Acknowledgments

- [Rust template](https://github.com/helium18/template-nix) which gave the inspiration



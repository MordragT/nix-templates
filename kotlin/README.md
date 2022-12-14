<div align=center>

# âï¸ nix-template-kotlin ðª

[![Kotlin](https://img.shields.io/badge/Made_for-Kotlin-blue.svg?style=for-the-badge&logo=kotlin)](https://kotlinlang.org/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 


Minimal **Kotlin** development template for **Nix** using **Gradle**

</div>

#### Who is this for

- Someone who wants to apply Nix's power for Kotlin development.
- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*â¢

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)âRead the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)â

#### So how do I use it ??

Click on the `Use this template` button (https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
and run `nix flake update .` to update the flake lock

#### Commands

- `nix develop`: opens up a `bash` shell with the poetry package
- `nix build` : builds the Python project. Outputs the scripts defined in the `pyproject.toml` to `./result/bin/<name>`
- `nix run`: runs the Python program.

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support

Consider starring the repo â­ðª

#### Acknowledgments

- [Rust template](https://github.com/helium18/template-nix) which gave the inspiration



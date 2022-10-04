<div align=center>

# ❄️ nix-template-mdbook 📚

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal **mdbook** development template for **Nix**

</div>

#### Who is this for

- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)❗Read the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)❗
2. [mdbook Documentation](https://rust-lang.github.io/mdBook/) - Read for information about mdbook

#### So how do I use it ??

Click on the `Use this template` button (https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
and run `nix flake update` to update the flake lock

#### Commands

- `nix develop`: opens up a `bash` shell with the mdbook commands
- `nix build` : builds the book to the symbolic `result` directory
- `nix run`: opens the book in your browser

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support

Consider starring the repo ⭐📚

#### Acknowledgments

- [Rust template](https://github.com/helium18/template-nix) which gave the inspiration
<div align=center>

# ❄️ nix-template-tex 📜

 [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 

Minimal Tex development template for **Nix**

</div>

#### Who is this for

- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™

#### Reference

- [wiki/Flakes](https://nixos.wiki/wiki/Flakes)❗Read the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)❗

#### So how do I use it ??

Click on the `Use this template` button (https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
and run `nix flake update` to update the flake lock

#### Commands

- `nix develop`: opens up a `bash` shell with tectonic
- `just build`: builds the Tex document into an pdf
- `just watch`: watches for changes

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support

Consider starring the repo ⭐📜
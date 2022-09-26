<div align=center>

# ❄️ template-nix 🦀

[![NixOS](https://img.shields.io/badge/Made_for-Rust-orange.svg?logo=rust)](https://nixos.org) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos)](https://nixos.org) ![License](https://img.shields.io/github/license/helium18/template-nix) 

Minimal **Rust** development template for **Nix**

</div>

<br><br>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Rustacean-orig-noshadow.svg/768px-Rustacean-orig-noshadow.svg.png?20220509231635" align="right" width="20%">
#### Who is this for 
- Someone who wants to apply Nix's power for Rust development.
- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™
<br><br>
#### Reference
1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)❗Read the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)❗
2. [Fenix](https://github.com/nix-community/fenix) - used for managing Rust toolchains (read the `makeRustPlatform` example)
3. [rust-section of language frameworks](https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/rust.section.md#cargo-features-cargo-features) - optional (use it for extending the template)
<br><br>
#### So how do I use it ??
This repository has two branches
1. `main`: normal verbose branch. For those who prefer explanations
2. `non-verbose`: you know your stuff and don't want explanations. You'll get a clean template with no comments

then click on the `Use this template` button (https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

run `nix flake update .` to update the flake lock
<br><br>
#### Commands 
- `nix develop`: opens up a `bash` shell with the bare minimum Rust toolset (`cargo` & `rustc`) by default
- `nix build` : builds the Rust project. Outputs the binary to `./result/bin/<name>`
- `nix run`: runs the Rust program.
<br><br>
#### FAQ
... Waiting for questions ... (raise an issue in case of doubts)
<br><br>
#### Support 
Consider starring the repo ⭐🦀

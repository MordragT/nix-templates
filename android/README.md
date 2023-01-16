<div align=center>

# ❄️ nix-template-android 📱

[![Kotlin](https://img.shields.io/badge/Made_for-Kotlin-blue.svg?style=for-the-badge&logo=kotlin)](https://kotlinlang.org/) [![NixOS](https://img.shields.io/badge/Flakes-Nix-informational.svg?logo=nixos&style=for-the-badge)](https://nixos.org) ![License](https://img.shields.io/github/license/mordragt/nix-templates?style=for-the-badge) 


Minimal **Android** development template for **Nix** using **Gradle**

</div>

#### Who is this for

- Someone who wants to apply Nix's power for Android development.
- Wants to develop Android applications without Android Studio
- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™

#### Reference

1. [wiki/Flakes](https://nixos.wiki/wiki/Flakes)❗Read the output schema carefully (especially `defaultPackage`, `legacyPackages` and `devShells`)❗

#### So how do I use it ??

After running `nix develop` copy the content of `local.properties` into `gradle.properties`.
Now you can run the different gradle tasks to build your app or install it on your phone.

#### Commands

- `nix develop`: opens up a `bash` shell with all necessary packages

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support

Consider starring the repo ⭐📱

#### Acknowledgments

- [Rust template](https://github.com/helium18/template-nix) which gave the inspiration
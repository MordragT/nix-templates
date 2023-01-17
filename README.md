
<div align=center>

# ❄️ nix-templates 📋

[![forthebadge](https://forthebadge.com/images/badges/check-it-out.svg)](https://forthebadge.com)[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)

Minimal development templates for **Nix**

</div>

#### Who is this for 

- Someone who wants to apply Nix's power for development environments.
- Who's not very comfortable with Flakes (you still need to have a basic understanding)
- Need something minimal that *just works*™

#### What templates are offered ?

- Deno runtime development template using deno2nix 🦖
- Rust development template using fenix 🦀
- Python development template using poetry2nix 🐍
- Tauri development template 🦬
- mdbook template for your documentation 📚
- Presentation development template using reveal.js 🗒️
- Tex development template using tectonic 📜
- Svelte development template with tailwind.css
- Simple trivial template using flake-utils 🚀

#### So how do I use it ??

There are multiple ways to use the templates defined in here.
To get started fast just use the following command:

```bash
# The name corresponds to the different templates provided:
# [deno, rust, python, tauri, jupyter-py, mdbook, slides, tex, trivial]
nix flake init -t github:MordragT/nix-templates#<name>
```

If you are using these templates more frequently you should probably add them
to the nix registry to shorten the command above.
This can be achieved by either adding them via the following command:

```
nix registry add templates github:MordragT/nix-templates
```

Or if you are using NixOS by declaratively adding the flake to youre system configuration,
as shown [here](https://search.nixos.org/options?channel=unstable&show=nix.registry.%3Cname%3E.flake&from=0&size=50&sort=relevance&type=packages&query=nix.registry)

After that you can run the shorter command:

```bash
nix flake init -t templates#<name>
```

#### FAQ

... Waiting for questions ... (raise an issue in case of doubts)

#### Support 

Consider starring the repo ⭐❄️

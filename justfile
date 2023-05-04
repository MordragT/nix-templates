update-all:
    #!/usr/bin/env nu
    for $dir in (ls | where type == dir) {
        enter $dir.name
        nix flake update
        exit
    }
    nix flake update
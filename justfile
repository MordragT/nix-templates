update-all:
    #!/usr/bin/env nu
    (ls
    | where type == dir
    | each {|$dir| 
        nix flake update $"./($dir.name)"
    })
    nix flake update

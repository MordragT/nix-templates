{ name
, availableKernels
, extraArgs
}:
availableKernels.python {
  inherit name;
  inherit (extraArgs) pkgs;
  displayName = "Python Data Science";
  extraPackages = ps: [ ps.numpy ];
}

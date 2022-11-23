{ name
, availableKernels
, extraArgs
}:
availableKernels.python {
  inherit name;
  inherit (extraArgs) system;
  displayName = "Python Data Science";
  extraPackages = ps: [ ps.numpy ];
}

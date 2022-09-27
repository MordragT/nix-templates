{ pkgs
, availableKernels
, kernelName
,
}:
availableKernels.python.override {
  name = "py-data-science"; #"custom-${kernelName}"; # must be unique
  displayName = "Python Data Science"; #"custom ${kernelName}";
  extraPackages = ps: [ ps.numpy ];
}

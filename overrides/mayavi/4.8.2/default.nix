{ resolveBuildSystem, helpers, ... }:
old:
if (helpers.isWheel old) then
  { }
else
  {
    nativeBuildInputs =
      old.nativeBuildInputs or [ ]
      ++ (resolveBuildSystem {
        oldest-supported-numpy = [ ];
        setuptools = [ ];
        vtk = [ ];
        wheel = [ ];
      });
  }

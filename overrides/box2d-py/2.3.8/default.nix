{
  resolveBuildSystem,
  helpers,
  pkgs,
  ...
}:
old:
if (helpers.isWheel old) then
  { }
else
  {
    nativeBuildInputs =
      old.nativeBuildInputs or [ ] ++ [ pkgs.swig ] ++ (resolveBuildSystem { setuptools = [ ]; });
  }

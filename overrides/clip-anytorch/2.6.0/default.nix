{ helpers, resolveBuildSystem, ... }:
old:
if (helpers.isWheel old) then
  { }
else
  {
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ (resolveBuildSystem { setuptools = [ ]; });
    postPatch = (old.postPatch or "") + "touch /build/clip-anytorch-2.6.0/requirements.txt";
  }

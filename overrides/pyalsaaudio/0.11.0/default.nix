{ resolveBuildSystem, pkgs, ... }:
old:
if ((old.passthru.format or "sdist") == "wheel") then
  { buildInputs = old.buildInputs or [ ] ++ [ pkgs.alsa-lib ]; }
else
  {
    buildInputs = old.buildInputs or [ ] ++ [ pkgs.alsa-lib ];
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ (resolveBuildSystem { setuptools = [ ]; });
  }

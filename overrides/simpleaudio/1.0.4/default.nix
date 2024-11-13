{
  resolveBuildSystem,
  helpers,
  pkgs,
  ...
}:
old:
if (helpers.isWheel old) then
  { buildInputs = old.buildInputs or [ ] ++ [ pkgs.pkgs.alsa-lib ]; }
else
  {
    buildInputs = old.buildInputs or [ ] ++ [ pkgs.pkgs.alsa-lib ];
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ (resolveBuildSystem { setuptools = [ ]; });
  }

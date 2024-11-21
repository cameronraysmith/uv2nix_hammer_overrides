{helpers, pkgs, ...}
        : old: if (!helpers.isWheel old) then
  {
    postConfigure = ''
      substituteInPlace setup.py \
        --replace-fail "/usr/include/eigen3/" "${pkgs.eigen}/include/eigen3/"
    '';
  }
else
  { }

        
{pkgs, final, ...}
        : old: {
  postInstall = old.postInstall or "" + ''
      rm $out/lib/python${final.python.pythonVersion}/site-packages/flatbuffers -r
  '';
}

        
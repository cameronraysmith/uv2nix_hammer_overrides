{pkgs, ...}
        : old: {
  postPatch = ''
  echo '[tool.setuptools_scm]' >> pyproject.toml
  '';
}

        
{ final, ... }:
old:
if ((old.format or "sdist") == "wheel") then
  { }
else
  {
    nativeBuildInputs = old.nativeBuildInputs or [ ] ++ [
      final.setuptools-git
      final.setuptools-scm
      final.setuptools
    ];
  }

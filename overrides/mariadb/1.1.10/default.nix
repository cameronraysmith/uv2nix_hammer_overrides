{resolveBuildSystem, final, pkgs, ...}
        : old: if ((old.passthru.format or "sdist") == "wheel") then {} else {nativeBuildInputs = old.nativeBuildInputs or [] ++ [pkgs.libmysqlclient] ++ ( resolveBuildSystem {packaging = [];setuptools = [];wheel = [];});}
        
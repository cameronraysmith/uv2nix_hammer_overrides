{resolveBuildSystem, final, ...}
        : old: if ((old.format or "sdist") == "wheel") then {} else {nativeBuildInputs = old.nativeBuildInputs or [] ++ ( resolveBuildSystem {"cython_0" = [];numpy = [];setuptools = [];torch = [];});}
        
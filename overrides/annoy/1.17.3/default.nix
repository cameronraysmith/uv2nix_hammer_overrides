{resolveBuildSystem, final, pkgs, ...}
        :
            old:
            let funcs = [(old: old // ( if ((old.passthru.format or "sdist") == "wheel") then {} else {nativeBuildInputs = old.nativeBuildInputs or [] ++ ( resolveBuildSystem {setuptools = [];});})) (old: old // ( {
  postPatch = ''
    cat setup.py
    substituteInPlace "setup.py" \
      --replace-fail "'nose>=1.0'" ""
  '';
}
))];
            in
            pkgs.lib.trivial.pipe old funcs
    
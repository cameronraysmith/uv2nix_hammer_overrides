<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
{final, pkgs, ...}
        : old: {
=======
{resolveBuildSystem, final, pkgs, ...}
        :
            old:
            let funcs = [(old: old // ( if ((old.format or "sdist") == "wheel") then {} else {nativeBuildInputs = old.nativeBuildInputs or [] ++ ( resolveBuildSystem {setuptools = [];});})) (old: old // ( {
>>>>>>> e4e331fe45e5220ba2341cba0ded308929c661ea
=======
{final, pkgs, ...}
        : old: {
>>>>>>> 01053e2ed30446105e78e3c6a6d86dd129e42b2e
=======
{final, pkgs, ...}
        : old: {
>>>>>>> c0969091896fdd3c5459e332658c3b9de30953a5
  postInstall =
    old.postInstall
    or ""
    + ''
      rm -rf $out/${final.python.sitePackages}/docs
    '';
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

        
=======
))];
            in
            pkgs.lib.trivial.pipe old funcs
    
>>>>>>> e4e331fe45e5220ba2341cba0ded308929c661ea
=======

        
>>>>>>> 01053e2ed30446105e78e3c6a6d86dd129e42b2e
=======

        
>>>>>>> c0969091896fdd3c5459e332658c3b9de30953a5

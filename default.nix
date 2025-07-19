{ stdenv, lib, ... }:
let
  nvim = ./src;
in
stdenv.mkDerivation {
  pname = "snvim";

  version = "0.0.1";

  buildCommand = ''
    mkdir -p $out
    cp -r ${nvim}/* "$out/"
  '';

  meta = with lib; {
    description = "diego's nvim shell config";
    homepage = "sudoneoox.github.io";
    platforms = platforms.all;
    licenses = license.glp3;
  };
}

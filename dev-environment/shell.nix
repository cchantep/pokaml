with import <nixpkgs> {}; {
  env = stdenv.mkDerivation {
    name = "env";
    buildInputs = with pkgs; [
      ninja
      gnum4
      pkgconfig
      openssl
      libffi
      pkgconfig
      opam
      nodePackages.nodemon
      # ocaml
      # ocamlPackages.ocaml_oasis
      # ocamlPackages.ounit
    ];
   shellHook = ''
     export OPAMUSEINTERNALSOLVER=1
     # echo "${libffi}"
     # export LIBFFI_CFLAGS=-I/opt/local/include
     # export LIBFFI_LIBS="-L${libffi}/lib -lffi"
   '';
  };
}

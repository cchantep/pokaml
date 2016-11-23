#! /bin/sh

rm -f Makefile \
_tags \
configure \
main.native \
myocamlbuild.ml \
pokaml_api.odocl \
runner.native \
setup.data \
setup.log \
setup.ml \
src/*.mldylib \
src/*.mllib \

# Directories
rm -rf src/META

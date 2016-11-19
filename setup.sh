#! /bin/sh

cp _tags.dist _tags
oasis setup

# TODO: Make it better
DEPS="core async_ssl cohttp yojson ounit"
opam install $DEPS

./configure --enable-tests

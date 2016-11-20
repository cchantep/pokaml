#! /bin/sh

cp _tags.dist _tags
oasis setup
opam install ounit
./configure --enable-tests

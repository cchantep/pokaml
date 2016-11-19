# Pokaml

Zengularity [Pokemon homework](https://docs.google.com/a/zenexity.com/document/d/1DZv8v_iCsZiWGbFasBIJoGKQor9CtStwOo4Z21osn1Q/edit?usp=sharing) developed with OCaml.

## Build

**Development environment:**

- Package manager [OPAM](https://opam.ocaml.org/)
- Build tool [OASIS](https://ocaml.org/learn/tutorials/setting_up_with_oasis.html) (`opam install oasis`)
- Compiler *ocamlbuild* (tested with 4.02.x)

**Setup:**

    ./setup.sh

**Compile:**

    make

## Test

The test suites are executed using [oUnit](http://ounit.forge.ocamlcore.org/): 

    ./runner.native

## Usage

Once built, executable `main.native` is available to start the server.

    ./main.native

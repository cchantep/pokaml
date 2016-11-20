# Pokaml

Zengularity [Pokemon homework](https://docs.google.com/a/zenexity.com/document/d/1DZv8v_iCsZiWGbFasBIJoGKQor9CtStwOo4Z21osn1Q/edit?usp=sharing) developed with OCaml.

[![Build Status](https://travis-ci.org/cchantep/pokaml.svg?branch=master)](https://travis-ci.org/cchantep/pokaml) [![CircleCI](https://circleci.com/gh/cchantep/pokaml.svg?style=svg)](https://circleci.com/gh/cchantep/pokaml)

## Build

**Development environment:**

- Package manager [OPAM](https://opam.ocaml.org/)
- Build tool [OASIS](https://ocaml.org/learn/tutorials/setting_up_with_oasis.html) (`opam instann oasis oasis2opam`)
- [oUnit](http://ounit.forge.ocamlcore.org/) test framework

**Setup:**

    ./setup.sh

**Compile:**

    make

## Test

The test suites are executed using oUnit runner:

    ./runner.native

## Edit dependencies

The project dependencies are managed using both OASIS and OPAM.
When the `_oasis` build is edited, the OPAM package descriptor needs to be updated.

The preferred way is to use `oasis2opam` and then check the regenerated descriptor

```
oasis2opam --local
opam pin edit pokaml
```

## Usage

Once built, executable `main.native` is available to start the server.

    ./main.native

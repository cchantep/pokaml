#! /bin/bash

# If a fork of these scripts is specified, use that GitHub user instead
#fork_user=${FORK_USER:-ocaml}

# If a branch of these scripts is specified, use that branch instead of 'master'
#fork_branch=${FORK_BRANCH:-master}

OLDPWD=`pwd`
TMP_BUILD=$(mktemp -d 2>/dev/null || mktemp -d -t 'citmpdir')
cd ${TMP_BUILD}

export OPAMYES=1
eval $(opam config env)

cd "$OLDPWD/server"

# Register in OPAM and resolve deps
opam pin add pokaml . && \
opam install pokaml

./setup.sh && \
make && \
./runner.native

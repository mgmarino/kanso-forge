#!/bin/bash
MODULENAME=forge
./generate_with_version.sh
PUBLISHDIR=./publish
rm -rf ${PUBLISHDIR}
mkdir ${PUBLISHDIR}
cp README.md kanso.json $MODULENAME.js ${PUBLISHDIR}
pushd $PUBLISHDIR && kanso publish && popd
rm -rf ${PUBLISHDIR}


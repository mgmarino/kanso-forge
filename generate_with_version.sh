#!/bin/bash
MODULENAME=forge
VERSION="0.6.14"
URL="http:\/\/github.com\/digitalbazaar\/forge"
INSTFOLDER=node_modules/node-forge
rm -rf node_modules
npm install node-forge@$VERSION 
pushd $INSTFOLDER  && npm install && npm run bundle && popd
cp $INSTFOLDER/js/forge.bundle.js forge.js
patch -p1 < forge.patch
for var in README.md kanso.json
do
  sed -e s/@VERSION@/$VERSION/g \
      -e s/@MODULENAME@/$MODULENAME/g \
      -e s/@URL@/$URL/g \
             $var.in > $var 
done

#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DIST_DIR=$SCRIPT_DIR/../dist
VENDOR_DIR=$SCRIPT_DIR/../src/vendor/openscad-wasm
OPENSCAD_WASM_URL=https://files.openscad.org/playground/OpenSCAD-2025.03.25.wasm24456-WebAssembly-web.zip

mkdir -p $VENDOR_DIR
mkdir -p $DIST_DIR


if which wget >/dev/null ; then
    wget $OPENSCAD_WASM_URL -O $VENDOR_DIR/openscad-wasm.zip
elif which curl >/dev/null ; then
    curl $OPENSCAD_WASM_URL -o $VENDOR_DIR/openscad-wasm.zip
else
    echo "Cannot download, neither wget nor curl is available."
    exit 1
fi

unzip $VENDOR_DIR/openscad-wasm.zip -d $VENDOR_DIR/

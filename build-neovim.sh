#!/usr/bin/env bash

set -euo pipefail

INSTALL_DIR=$(cd .. ; pwd)

cd third_party/neovim

rm -rf build
mkdir build
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX="$INSTALL_DIR"
echo "Installing to $INSTALL_DIR"
make install

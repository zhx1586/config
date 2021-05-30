#!/bin/bash

git submodule update --init

echo "zshell install..."
source ./zshell/install.sh

echo "neovim install..."
source ./neovim/install.sh

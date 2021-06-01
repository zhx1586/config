#!/bin/bash

git submodule update --init

echo "zshell config install..."
source ./zshell/install.sh

echo "neovim config install..."
source ./neovim/install.sh

echo "tmux config install..."
source ./tmux/install.sh

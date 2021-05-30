#!/bin/bash

if [[ ! -d $HOME/.local/src ]]; then 
	mkdir -p $HOME/.local/src
fi

if [[ ! -d $HOME/.local/bin ]]; then 
	mkdir -p $HOME/.local/bin
fi

cd $HOME/.local/src

if [[ -d $HOME/.local/src/neovim ]]; then
	echo "Directory ${HOME}/.local/src/neovim existed."
	echo "Exit."
	exit
fi

git clone https://github.com/neovim/neovim.git

cd neovim

git checkout -b build v0.4.4

make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/.local -j8

make install prefix=$HOME/.local

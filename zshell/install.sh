#!/bin/bash

export ZSH_CONFIG_PATH=$(cd $(dirname ${BASH_SOURCE[0]:-${(%):-%x}}); pwd)

if [ ! -d $HOME/.zsh-bak ]; then
	mkdir $HOME/.zsh-bak
fi

if [ -f $HOME/.zshrc ]; then 
	mv $HOME/.zshrc $HOME/.zsh-bak/zshrc-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $ZSH_CONFIG_PATH/zshrc $HOME/.zshrc

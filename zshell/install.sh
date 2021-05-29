#!/bin/bash

export ZSH_CONFIG_PATH=$(cd $(dirname ${BASH_SOURCE[0]:-${(%):-%x}}); pwd)

if [ ! -d $HOME/.zsh-bak ]; then
	mkdir $HOME/.zsh-bak
fi

if [ -f $HOME/.zshrc ]; then 
	mv $HOME/.zshrc $HOME/.zsh-bak/zshrc-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $ZSH_CONFIG_PATH/zshrc $HOME/.zshrc

if [ -f $HOME/.p10k.zsh ]; then 
	mv $HOME/.p10k.zsh $HOME/.zsh-bak/p10k.zsh-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $ZSH_CONFIG_PATH/p10k.zsh $HOME/.p10k.zsh

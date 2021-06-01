#!/bin/bash

export ZSH_CONFIG_PATH=$(cd $(dirname ${BASH_SOURCE[0]:-${(%):-%x}}); pwd)

mkdir -p $HOME/.config-bak

if [ -f $HOME/.zshrc ]; then
	mv $HOME/.zshrc $HOME/.config-bak/zshrc-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $ZSH_CONFIG_PATH/zshrc $HOME/.zshrc

if [ -f $HOME/.p10k.zsh ]; then
	mv $HOME/.p10k.zsh $HOME/.config-bak/p10k.zsh-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $ZSH_CONFIG_PATH/p10k.zsh $HOME/.p10k.zsh

if [ ! -d $HOME/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
    source $HOME/.fzf/install
fi

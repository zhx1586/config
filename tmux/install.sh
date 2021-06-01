#!/bin/bash

export TMUX_CONFIG_PATH=$(cd $(dirname ${BASH_SOURCE[0]:-${(%):-%x}}); pwd)

mkdir -p $HOME/.tmux/plugins
mkdir -p $HOME/.config-bak

if [ ! -d $HOME/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

if [ -f $HOME/.tmux.conf ]; then
	mv $HOME/.tmux.conf $HOME/.config-bak/tmux.conf.bak-`date +%Y%m%d%H%M%S`
fi
ln -s $TMUX_CONFIG_PATH/tmux.conf $HOME/.tmux.conf

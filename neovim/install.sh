#!/bin/bash

export NVIM_CONFIG_PATH=$(cd $(dirname ${BASH_SOURCE[0]:-${(%):-%x}}); pwd)

mkdir -p $HOME/.config
mkdir -p $HOME/.config-bak

if [ -d $HOME/.config/nvim ]; then 
	mv $HOME/.config/nvim $HOME/.config-bak/nvim-bak-`date +%Y%m%d%H%M%S`
fi
ln -s $NVIM_CONFIG_PATH/nvim $HOME/.config/nvim

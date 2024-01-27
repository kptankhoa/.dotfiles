#!/bin/bash

DF_HOME=$HOME/.dotfiles

if [ -f $DF_HOME/.zshrc ]; then
    touch $HOME/.zshrc
    ln -s $DF_HOME/.zshrc $HOME/.zshrc
fi

if [ -f $DF_HOME/.zsh_aliases ]; then
    touch $HOME/.zsh_aliases
    ln -s $DF_HOME/.zsh_aliases $HOME/.zsh_aliases
fi

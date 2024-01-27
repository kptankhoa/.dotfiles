#!/bin/bash

DF_HOME=$HOME/.dotfiles

if [ -f $HOME/.zshrc ]; then
    mv $HOME/.zshrc $DF_HOME/.zshrc
    ln -s $DF_HOME/.zshrc $HOME/.zshrc
fi

if [ -f $HOME/.zsh_aliases ]; then
    mv $HOME/.zsh_aliases $DF_HOME/.zsh_aliases
    ln -s $DF_HOME/.zsh_aliases $HOME/.zsh_aliases
fi

#!/bin/bash

DF_HOME=$HOME/.dotfiles

if [ -f $DF_HOME/.zshrc ]; then
    touch $HOME/.zshrc
    ln -s $DF_HOME/.zshrc $HOME/.zshrc
fi

if [ -f $DF_HOME/.p10k.zsh ]; then
    touch $HOME/.p10k.zsh
    ln -s $DF_HOME/.p10k.zsh $HOME/.p10k.zsh
fi

if [ -f $DF_HOME/.zsh_aliases ]; then
    touch $HOME/.zsh_aliases
    ln -s $DF_HOME/.zsh_aliases $HOME/.zsh_aliases
fi

if [ -d $HOME/.oh-my-zsh ]; then
    rm -rf $HOME/.oh-my-zsh
fi
cp -r $DF_HOME/.oh-my-zsh $DF_HOME/.oh-my-zsh

if [ -d $HOME/powerlevel10k ]; then
    rm -rf $HOME/powerlevel10k
fi
cp -r $DF_HOME/powerlevel10k $HOME/powerlevel10k

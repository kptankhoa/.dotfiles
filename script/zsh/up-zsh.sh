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

if [ -f $HOME/.p10k.zsh ]; then
    mv $HOME/.p10k.zsh $DF_HOME/.p10k.zsh
    ln -s $DF_HOME/.p10k.zsh $HOME/.p10k.zsh
fi

if [ -d $HOME/.oh-my-zsh ]; then
    cp -r $HOME/.oh-my-zsh $DF_HOME/.oh-my-zsh
fi

if [ -d $HOME/powerlevel10k ]; then
    cp -r $HOME/powerlevel10k $DF_HOME/powerlevel10k
fi
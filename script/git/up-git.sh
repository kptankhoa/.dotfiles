#!/bin/bash

DF_HOME=$HOME/.dotfiles

mv $HOME/.gitconfig $DF_HOME/.gitconfig
ln -s $DF_HOME/.gitconfig $HOME/.gitconfig
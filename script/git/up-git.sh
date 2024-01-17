#!/bin/bash

export DF_HOME='../'

mv $HOME/.gitconfig $DF_HOME/.gitconfig
ln -s $DF_HOME/.gitconfig $HOME/.gitconfig
#!/bin/bash

DF_HOME=$HOME/.dotfiles

if [ ! -d $DF_HOME/.ssh ]; then
  mkdir $DF_HOME/.ssh
fi

mv $HOME/.ssh $DF_HOME/.ssh

for FILE in $DF_HOME/.ssh/*; 
do
    if [ ! -f "$FILE" ]; then
        touch $HOME/.ssh/$(basename $FILE)
    fi
    ln -s $FILE $HOME/.ssh/$(basename $FILE)
done


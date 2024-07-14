#!/bin/bash

# install zsh
sudo apt install zsh
chsh -s $(which zsh)

# install go
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz

# install bun
curl -fsSL https://bun.sh/install | bash

tmux source-file ~/.tmux.conf

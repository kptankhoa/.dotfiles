# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
# bun completions
[ -s "/home/kptankhoa/.bun/_bun" ] && source "/home/kptankhoa/.bun/_bun"

# java
# export JAVA_HOME="~/jdks/azul-11"
# export PATH=$JAVA_HOME/bin:$PATH
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"

export M2_HOME='/opt/apache-maven-3.9.6'
export PATH="$M2_HOME/bin:$PATH"

# nuxeo shorthand
source $HOME/sourceme.sh
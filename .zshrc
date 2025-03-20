export ZSH="$HOME/.oh-my-zsh"

neofetch

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=vim

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/kptankhoa/.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

bindkey -e

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/home/kptankhoa/.local/bin

export OPENAI_KEY=""
eval "$(/opt/homebrew/bin/brew shellenv)"

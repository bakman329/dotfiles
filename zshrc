# NOTE: Much of this config and my oh-my-zsh config comes from:
#    http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
#    So all due credit goes to the author of that blog

# Set zsh theme
ZSH_THEME="agnoster"
# To simplify prompt
export DEFAULT_USER=$(id -un)

source ~/.profile

# Path to oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Specify plugins
# osx: Various helpful aliases for OSX
# git: Git integration
# brew: Brew aliases and completion
# common-aliases: Several useful aliases
# zsh-syntax-highlighting: Fish-like highlighting for zsh
plugins=(git osx brew common-aliases) # zsh-syntax-highlighting)

# Fix escape timeout
export KEYTIMEOUT=1

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR='vim'

# Set keybinds
bindkey -e
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^K' kill-line
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

source ~/.bin/name2.zsh && name2

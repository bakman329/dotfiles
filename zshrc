# NOTE: Much of this config comes from:
#    http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
# Set zsh theme
ZSH_THEME="agnoster"

# To simplify prompt
export DEFAULT_USER=$USER
source $HOME/.profile

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Specify plugins
# osx: Various helpful aliases for OSX
# git: Git integration
plugins=(git osx)

# Set emacs keybinds
bindkey -e

# Fix escape timeout
export KEYTIMEOUT=1

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

case $TERM in
    *xterm*|ansi)
        function settab { print -Pn "\e]1;%n@%m: %~\a" }
        function settitle { print -Pn "\e]2;%n@%m: %~\a" }
        function chpwd { settab;settitle }
        settab;settitle
        ;;
esac

export EDITOR='vim'

source $HOME/.bin/name.zsh && name

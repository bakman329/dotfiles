# NOTE: Much of this config and my oh-my-zsh config comes from:
#    http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
#    So all due credit goes to the author of that blog

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
plugins=(git osx brew common-aliases)

# Fix escape timeout
export KEYTIMEOUT=1

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

COLORTERM='rxvt'
TERM='rxvt-unicode-256color'

export EDITOR='vim'

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/pkgconfig

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

alias xrdb='xrdb ~/.Xresources'
# alias venv='source ~/env.sh'
alias sf='cd /media/sf_debian_shared'
# alias tf='cd ~/tensorflow/home'
alias mb='ls -l --block-size=M'
alias pi='ssh pi@192.168.1.254 -p2016'
function __get {
    if [ $# -ne 1 ]; then
        echo 'Usage: get {file}'
    else
        echo -n scp -P2016 pi@
        echo -n $IP:
        echo -n $(realpath $1)
        echo -n ' '
        echo -n \~/pi/
        echo $(basename $1)
    fi
}
alias get='__get'
alias vim='nvim'

# feh --bg-fill ~/Pictures/octocat-primed.jpg
source ~/.bin/name.sh && name

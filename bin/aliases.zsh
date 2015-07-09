# Easily run ls in long form
alias l='ls -l'

# Format usage
alias usage='top -stats pid,command,cpu,mem'

# Gui vim
alias gvim='open -a"Macvim"'

# List most recent files in dir $1
# If $2 is given, list $2 most recent files
function atr() {
    if [[ $# -eq 2 ]]; then
        ls -Atr $1 | tail -$2
    else
        ls -Atr $1
    fi
}

# Run a command in the home directory
function home() {
    if [[ -z $1 ]]; then
        cd $HOME
    else
        PDIR=$(pwd)
        cd $HOME
        eval ${@:1}
        cd $PDIR
    fi
}

# Quickly run a minecraft server locally
function server() {
    if [ $# -ne 1 ]; then
        echo "Usage: server <server name>"
    fi

    PDIR=$(pwd)
    cd $HOME/mcServers/Spigot/
    case $1 in
        "1.8.3")
            cd 1.8.3/
            ./start.sh
            ;;
        *)
            echo "Unknown server $1"
            echo "Servers:"
            echo "    \'1.8.3\'"
            ;;
    esac

    cd $PDIR
}

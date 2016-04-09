#!/bin/zsh

# Function to print a greeting
name() {
    echo $fg_bold[red] " __   __                  _   _   // ____ "
    echo $fg_bold[red] "|  | |  |                | | | | // / ___|"
    echo $fg_bold[red] "|  |_|  | ___ _ ___  ____| |_| |   | |___ "
    echo $fg_bold[red] "|   _   |/ _ \\| '_ \\/ /\\_\\__,  |    \\___ \\"
    echo $fg_bold[red] "|  | |  |  __/| | | | |   __/  |     ___| |"
    echo $fg_bold[red] "|__| |__|\\___||_| |_| |   \\___/     |____/"
    echo
    echo $fg_bold[red] " ______    _" \
         $fg[blue] "       user: $(id -un)"
    echo $fg_bold[red] "|___  /   | |" \
         $fg[blue] "            @$HOST"
    echo $fg_bold[red] "   / / ___| |__"
    echo $fg_bold[red] "  / / / __| '_ \\" \
         $fg[blue] "   time: $(date +%l:%M)"
    echo $fg_bold[red] " / /__\\__ \\ | | |"
    echo $fg_bold[red] "/_____|___/_| |_|"
}

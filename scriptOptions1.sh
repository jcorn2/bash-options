#!/bin/bash

printHelpMenu () {
    echo "Help menu for our bash script."
    echo -e "scriptOptions -a \truns pwd"
    echo -e "scriptOptions -b \truns ls"
    echo -e "scriptOptions -c \truns date"
    echo -e "scriptOptions -h \tprints out help menu"
}

while getopts 'abch' opt; do
    case "$opt" in
        a)
            pwd
            ;;
        b)
            ls
            ;;
        c)
            date
            ;;
        h)
            printHelpMenu
            ;;
    esac
done
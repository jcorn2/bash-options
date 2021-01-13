#!/bin/bash

printHelpMenu () {
    echo "Help menu for our bash script."
    echo -e "scriptOptions -a \truns pwd"
    echo -e "scriptOptions -b \truns ls"
    echo -e "scriptOptions -c \truns date"
    echo -e "scriptOptions -h \tprints out help menu"
}

# Add a ':' after a letter in the options list lets getopts know that the option
# takes an argument. The argument value is contained in the OPTARG variable. The
# argument value can either be provided like "scriptOptions -b /home" or like
# "scriptOptions -b=/home".
while getopts 'ab:ch' opt; do
    case "$opt" in
        a)
            pwd
            ;;
        b)
            ls ${OPTARG}
            ;;
        c)
            date
            ;;
        h)
            printHelpMenu
            ;;
    esac
done
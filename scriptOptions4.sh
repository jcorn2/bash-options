#!/bin/bash

printHelpMenu () {
    echo "Help menu for our bash script."
    echo -e "scriptOptions -a \truns pwd"
    echo -e "scriptOptions -b \truns ls"
    echo -e "scriptOptions -c \truns date"
    echo -e "scriptOptions -h \tprints out help menu"
}

# Non-option arguments can be used with a script in additional to arguments
# provided to getopts.
nonOptionArg=$1
# getopts stops parsing once the first non-option argument is reached. If a 
# non-option argument is expected first, call shift so that OPTIND is set to the
# next argument.
shift 

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
# shift OPTIND back 1 so that the all the non-option arguments provided after
# the options can be accessed using $* or $@
shift $(($OPTIND -1))

nonOptionArg2=$*

echo "The non-option argument is ${nonOptionArg}"
echo "The non-option argument is ${nonOptionArg2}"
#!/bin/bash

printHelpMenu () {
    echo "Help menu for our bash script."
    echo -e "scriptOptions -a \truns pwd"
    echo -e "scriptOptions -b \truns ls"
    echo -e "scriptOptions -c \truns date"
    echo -e "scriptOptions -h \tprints out help menu"
}

# Adding a colon to the front of the options list tells getopts to not treat an
# invalid option as an error. The option variable is instead set to the '?' mark
# symbol and the OPTARG variable is set to the invalid option. 
while getopts ':abch' opt; do
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
        \?)
            echo -e "Invalid option provided: ${OPTARG}\n"
            printHelpMenu
    esac
done
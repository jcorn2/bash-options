#!/bin/bash

printHelpMenu () {
    echo "Help menu for our bash script."
    echo -e "scriptOptions -a \truns pwd"
    echo -e "scriptOptions -b \truns ls"
    echo -e "scriptOptions -c \truns date"
    echo -e "scriptOptions -h \tprints out help menu"
}

# getopts is a command for parsing command line options
# The first argument is the options that the script will parse.
# The second argument is the variable that holds the current option being parsed.
# Each iteration of the while loop parses an option provided to the script. Options
# are single letters that began with a dash. Multiple options can be used 
# either like "scriptOptions -ab" or like "scriptOptions -a -b".
while getopts 'abch' opt; do
    # a case statement is used to determine which option is being parsed
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
        # If an option is used that is not contained in the first argument to getopts,
        # than getopts will treat it as an error.
    esac
done
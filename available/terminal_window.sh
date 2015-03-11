#!/bin/sh

##
# Add the current path to the terminal window & tab.
#
# This will lookup the current path, create a shorter version out of it and add
# it as title to the terminal window & tab.
##



##
# Function to get a shorter current path.
##
function shorten_pwd()
{
    LENGTH="40"
    PART1="10"
    PART2="27"

    DIR=`echo "${PWD}" | sed "s/\\/home\\/$USER/~/" | sed "s/\\/Users\\/$USER/~/"`

    if [ ${#DIR} -gt $(($LENGTH)) ]; then
        echo "${DIR:0:$(($PART1))}...${DIR:$((${#DIR}-$PART2)):$PART2}"
    else
        echo "$DIR"
    fi
}

# Set the tab title = current path.
export PROMPT_COMMAND='echo -ne "\033]0;$(shorten_pwd)\007"'

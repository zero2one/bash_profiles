#!/bin/bash

##
# Enable/Disable debugging of PHP scripts when they are run in command line.
# Use an IDE that support PHP debugging.
#
# Enable debugger by running:
#    $ php-debug-on
#
# Disable debugger by running:
#    $ php-debug-off
##

alias phpdebug-on="export XDEBUG_CONFIG='idekey=PHPSTORM'"
alias phpdebug-off="unset XDEBUG_CONFIG"

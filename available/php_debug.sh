#!/bin/bash

##
# Enable/Disable debugging of PHP scripts when they are run in command line.
# Use an IDE that support PHP debugging.
#
# Enable debugger by running:
#    $ debug-on
#
# Disable debugger by running:
#    $ debug-off
##

alias php-debug-on='export QUERY_STRING="start_debug=1&debug_stop=1&debug_fastfile=1&debug_coverage=1&use_remote=1&send_sess_end=1&debug_session_id=2000&debug_start_session=1&debug_new_session=1&debug_port=10137&debug_host=localhost"'
alias php-debug-off='export QUERY_STRING=""'

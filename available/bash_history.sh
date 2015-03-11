#!/bin/bash

##
# Override the default settings for keeping and showing the bash history.
##



# Improve the history storage.
shopt -s histappend

# Store 10000 commands in bash history.
export HISTFILESIZE=100000
export HISTSIZE=100000

# Don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

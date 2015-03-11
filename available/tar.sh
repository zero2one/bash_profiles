#!/bin/bash

##
# Add better tarbal support.
##



# Exclude OSX hidden files from tarballs.
export COPY_EXTENDED_ATTRIBUTES_DISABLE=true
export COPYFILE_DISABLE=true
alias tar='tar --exclude="._*"'

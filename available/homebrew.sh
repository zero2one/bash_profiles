#!/bin/bash

##
# Support for Homebrew.
##



##
# Brew autocomplete (including support for git).
#
# You need to have following installtion done:
#   1. Install homebrew (http://brew.sh/).
#   2. Install Git and bash-completion:
#      $ brew install git bash-completion
#      (Note: If this install fails with a 404 error, and you already have git
#      installed, just remove the git part of this brew install)
##
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

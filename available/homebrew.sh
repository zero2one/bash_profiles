#!/bin/bash

##
# Support for Homebrew.
##

##
# Create your GitHub API token on https://github.com/settings/tokens and then
# set the environment variable HOMEBREW_GITHUB_API_TOKEN.
#
# When creating the token, make sure that you only select the scopes you need.
# Deselecting all of the scopes is very reasonable!
#
# Setting the token is done using the export command.
#
#export HOMEBREW_GITHUB_API_TOKEN=xxxx

##
# Brew autocomplete (including support for git).
#
# You need to have following installation done:
#   1. Install homebrew (http://brew.sh/).
#   2. Install Git and bash-completion:
#      $ brew install git bash-completion
#      (Note: If this install fails with a 404 error, and you already have git
#      installed, just remove the git part of this brew install)
##
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

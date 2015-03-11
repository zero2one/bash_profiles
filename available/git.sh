#!/bin/bash

##
# Support for GIT.
##


##
# X-Code comes with an outdated version of GIT.
# Replace it with a manual updated version.
#
#   1. Download the latest version from http://git-scm.com/download/mac
#   2. Run the installer.
#
# This path change adds the manual installed GIT bins path to $PATH.
##
export PATH=/usr/local/git/bin:/usr/local/sbin:$PATH

##
# Alias to have a nicer log output from GIT.
# See https://coderwall.com/p/euwpig/a-better-git-log
#
# Use following command to see the nicer output:
#   $ git lg
##
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

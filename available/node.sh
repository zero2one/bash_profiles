#!/bin/bash

##
# Support for Node Version Manager.
##

# The node Version Manager can be installed using Brew but there are some caveats.
# Run $ brew info nvm after installation to see what should be added.

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

##
# Fix to use the proper node version in GUI tools.
#
# See https://www.competa.com/blog/how-to-make-gui-tools-like-sourcetree-play-nice-with-nvm-on-osx/
##
function __nvmAndUpdatePath() {
  local launchAgent="~/Library/LaunchAgents/com.yourdomain.setpath.plist";
  if [ "$1" = "use" ]; then
    nvm "$@" && launchctl unload "$launchAgent" && launchctl load "$launchAgent";
  else
    nvm "$@";
  fi
}

alias nvm="__nvmAndUpdatePath"

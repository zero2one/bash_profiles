#!/bin/bash


# Define root path so we can use to construct include paths.
BASH_PROFILES=`dirname ~/.bash_profiles/bash_profiles.sh`

# Load all scripts in the .bash_profiles/enabled/ subdirectory (if any).
if [ "$(ls $BASH_PROFILES/enabled)" ]; then

  for file in $BASH_PROFILES/enabled/*.sh;
  do
    source $file
  done

fi

# Load all aliases in the .bash_profiles/aliases/ subdirectory (if any).
if [ "$(ls $BASH_PROFILES/aliases)" ]; then

  for file in $BASH_PROFILES/aliases/*.sh;
  do
    source $file
  done

fi

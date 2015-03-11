#!/bin/bash

##
# Pimp the command prompt by:
#   - Add colors to it.
#   - Add extra info to it like current user, hostname & full path
#   - Put the prompt on 2 lines: 1 with the info, 2dn to enter command.
#   - Show the current GIT branch name (if any).
##



# Function to get the current GIT branch name.
function parse_git_branch() {
  if hash git 2>/dev/null; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
  fi
}


# Check if the terminal supports colors.
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix|screen)
	  use_color=true
    ;;

  *)
		use_color=false
    ;;
esac


# Set the proper prompt.
if ${use_color} ; then
	# set color prompt
  if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W$(parse_git_branch)\n\$\[\033[00m\] '
  else
    # Use Homebrew autocomplete if available.
    if hash __git_ps1 2>/dev/null; then
		  PS1='\[\033[00;32m\]\u@\h\[\033[01;30m\]:\[\033[01;34m\]\w\n\[\033[01;30m\]$(__git_ps1 "(%s) ")\[\033[01;34m\]\$\[\033[00m\] '
		else
		  PS1='\[\033[00;32m\]\u@\h\[\033[01;30m\]:\[\033[01;34m\]\w\n\[\033[01;30m\]$(parse_git_branch)\[\033[01;34m\]\$\[\033[00m\] '
    fi
  fi

	# enable ls colors
  alias ls='ls -G'

	# enable grep color
  alias grep='grep --colour=auto'
else
  if [[ ${EUID} == 0 ]] ; then
    # show root@ when we don't have colors
    PS1='\u@\h \W \$ '
  else
    PS1='\u@\h \w \$ '
  fi
fi


# Cleanup variables.
unset use_color

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

### Bash History ###
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%Y %m%d %T "
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# Reset window text on window resize
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

### BASH PROMPT ###

# Colors #
#RED='\e[1;31m' #GREEN='\e[1;32m' #YELLOW='\e[1;33m'
#BLUE='\e[1;34m' #PURPLE='\e[1;35m' #NOCOL='\e[0m'

# Display the git branch at the git root directory
function gitBranch {
  [ -d .git ] && git branch | awk '/\*/{print $2}'
}
function gitTag {
	[ -d .git ] && git describe 2> /dev/null
}

# Set PS1 variable
PS1='\033[01;34m\w\033[00m \e[1;32m$(gitBranch) $(gitTag)  \e[0m\n\$ '
#PS1='\033[01;34m\w\033[00m \e[1;32m \e[0m\n\$ '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dir_colors && eval "$(dircolors -b $HOME/.dir_colors)" || eval "$(dircolors -b)"
fi

# Alias definitions.
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

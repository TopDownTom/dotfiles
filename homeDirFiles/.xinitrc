#!/bin/sh

# Compositor
picom &

# Set a background
xwallpaper --stretch ~/.pape.png

# Start Rxvt-unicode daemon
urxvtd &

# start redshift
redshift &

### X Settings

# Set X refresh rate, helps increase scroll speed
xset r rate 300 50
# Switch capslock and escape key
setxkbmap -option caps:swapescape
# External monitor settings, disables power-saving modes which otherwise sleeps the computer
xset s off 
xset -dpms
# Disable touchpad
xinput disable "SynPS/2 Synaptics TouchPad"

# Grab number of displays, set DISPLAYi env var to each connected display
source ~/docs/scripts/numDisplays

# Load .Xresources or set a default theme if none present
[ -f ~/.Xres-theme ] && xrdb -load ~/.Xresources || \
	( cat ~/.files/homeDirFiles/.colors/.Xres-dracula > ~/.Xres-theme && xrdb -load ~/.Xresources )

# GPG Agent Stuff
if [ -x /usr/bin/gpg-agent ]; then
 eval "$(/usr/bin/gpg-agent --daemon)"
fi

## Start the WM
# This gets passed from startx in ~/.profile. Setting it up this way allows me to select from a list of WMs
#exec $1
exec i3

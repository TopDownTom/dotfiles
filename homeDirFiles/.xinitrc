#!/bin/sh

# vm stuff
vboxRes &
# https://github.com/vmware/open-vm-tools/issues/48
vmware-user &
vmware-user-suid-wrapper &

# Set a background
xwallpaper --stretch $HOME/.pape.png

# Start Rxvt-unicode daemon
urxvtd &

# start networkmanager applet
nm-applet &

# start flameshot
flameshot &

# start pulseaudio daemon
#pulseaudio -k && pulseaudio -D

### X Settings

# Set X refresh rate, helps increase scroll speed
xset r rate 600 50
# Switch capslock and escape key
setxkbmap -option caps:swapescape
# External monitor settings, disables power-saving modes which otherwise sleeps the computer
xset s off
xset -dpms
# Disable touchpad
xinput disable "SynPS/2 Synaptics TouchPad"

## Grab number of displays, set DISPLAYi env var to each connected display
#source $SCRIPT_DIR/numDisplays

# Load .Xresources or set a default theme if none present
[ -f $HOME/.Xres-theme ] && xrdb -load $HOME/.Xresources || \
	( cat $USER_CONFIG_DIR/homeDirFiles/.colors/.Xres-dracula > $HOME/.Xres-theme && xrdb -load $HOME/.Xresources )

# GPG Agent Stuff
if [ -x /usr/bin/gpg-agent ]; then
 eval "$(/usr/bin/gpg-agent --daemon)"
fi

# systemd user units
systemctl --user start reload-i3.path

## Start the WM
# This gets passed from startx in $HOME/.profile. Setting it up this way allows me to select from a list of WMs
#exec $1
exec i3

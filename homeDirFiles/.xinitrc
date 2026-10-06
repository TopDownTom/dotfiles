#!/bin/sh

# Start Rxvt-unicode daemon
urxvtd &

# start networkmanager applet
#nm-applet &

# start protonvpn
#type protonvpn-app 2>/dev/null && testOnline && protonvpn-app &

# start pulseaudio daemon
pulseaudio -k || pulseaudio -D

# start flameshot in the background
flameshot &

### X Settings

# External monitor settings, disables power-saving modes which otherwise sleeps the computer
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

DBUS_SESSION_BUS_ADDRESS="$(systemctl --user show-environment | sed -n 's/^DBUS_SESSION_BUS_ADDRESS=//p')"
export DBUS_SESSION_BUS_ADDRESS

DBUS_SESSION_BUS_PID="$(systemctl --user show-environment | sed -n 's/^DBUS_SESSION_BUS_PID=//p')"
[ -n "$DBUS_SESSION_BUS_PID" ] && export DBUS_SESSION_BUS_PID

dbus-update-activation-environment DISPLAY XAUTHORITY

# start the notification daemon
systemctl --user start dunst

## Start the WM
# This gets passed from startx in $HOME/.profile. Setting it up this way allows me to select from a list of WMs
#exec $1
exec i3

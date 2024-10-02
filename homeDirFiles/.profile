# start the ssh-agent on initial bash so all shells have access to these vars
if [ ! -S $HOME/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent` 1> /dev/null
  ln -sf "$SSH_AUTH_SOCK" $HOME/.ssh/ssh_auth_sock
fi

# System variables
export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox --profile $HOME/.mozilla/firefox/managed --private-window file:///$HOME/.mozilla/firefox/managed/startpage.html"
export VIEWER="sxiv"
export PDFVIEWER="zathura"
export DIFFPROG="vi"
export USER_FONT='Anonymice Nerd Font'
export TEXMFHOME="$HOME/.config/texmf/"
export SCRIPT_DIR="/usr/local/etc/scripts"
export USER_CONFIG_DIR="/usr/local/etc/user_configs"
export SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock

# Start X-Org on login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

# Use for selectable WM list
#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	wms=(i3 openbox-session)
#	select wm in ${wms[@]};
#	do
#		case $wm in
#			*)
#				exec startx $HOME/.xinitrc $wm
#				break;;
#		esac
#	done
#fi

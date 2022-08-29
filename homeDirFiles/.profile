# SSH-Agent Prompt At Login
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# Update PATH to include user shell scripts
PATH="$PATH:$HOME/docs/scripts:$HOME/.local/bin"
export PATH

# System variables
export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="nvim"
export TERMINAL="urxvtc"
export BROWSER="firefox --profile $HOME/.mozilla/firefox/managed --private-window file:///$HOME/.mozilla/firefox/managed/startpage.html"
export VIEWER="sxiv"
export PDFVIEWER="zathura"
export DIFFPROG="vi"
export USER_FONT='Anonymice Nerd Font'
export TEXMFHOME="$HOME/.config/texmf/"
export SCRIPT_DIR="$HOME/docs/scripts"

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
#				exec startx ~/.xinitrc $wm
#				break;;
#		esac
#	done
#fi

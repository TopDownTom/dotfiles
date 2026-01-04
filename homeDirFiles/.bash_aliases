a="alias"

# ensure .profile is sourced for variables
[ -f $HOME/.profile ] && . $HOME/.profile

# General aliases
$a cd='function _cdfetch(){ cd "${1:-$HOME}"; [[ $? -eq 0 ]] && gitFetchTimer; };_cdfetch'
$a rm='rm -I'
$a ll='ls -alF'
$a la='ls -A'
$a lal='ls -lA'
$a lsl='ls -l'
$a ls='ls --color=auto'
$a grep='grep --color=auto'
$a fgrep='fgrep --color=auto'
$a egrep='egrep --color=auto'
$a ":wq"='echo "This is not vim"'
$a ":q"='echo "This is not vim"'
$a ..='cd ../'

# Youtube-dl related
$a yt='yt-dlp -f 22'
$a ytd='$SCRIPT_DIR/youtubedl' # more general script than the two aliases
$a ytpm='yt-dlp -f bestaudio --add-metadata' # downloads [m]usic playlists in .mp4 format with their native filenames
$a ytpv='yt-dlp -f 137 -i -o "%(title)s.mp4-video"' # downloads [v]ideo playlists in .mp4 format with their native filenames
$a ytpa='yt-dlp -f bestaudio -i -o "%(title)s.%(ext)s"' # downloads [a]udio playlists in .m4a format with their native filenames

# Command shorthand
$a ap='ansible-playbook -i inventory'
$a bc='bc -lq'
$a beep='speaker-test -t sine -f 1000'
$a copy='xclip -selection clipboard -i'
$a cmatrix='cmatrix -u 10 -s'
$a grindCompare='py3 $HOME/docs/coffee/coffeegrindsize/App/dist/coffeegrindsize.app/Contents/Resources/coffeegrindsize.py & disown'
$a i3lockb='i3lock -c 000000'
$a n='function _title(){ rxvt -e $1 & disown; };_title' # gives windows titles (not useful w/o window titles displayed)
$a mpv='devour mpv'
$a net='$SCRIPT_DIR/net'
$a notif='notify-send done && watch -n1 "#hi im done"'
$a polyReload='/bin/bash $USER_CONFIG_DIR/polybar/.config/polybar/launch'
$a py3='`which python3`'
$a pyGen='pythonScriptGen'
$a scr='$SCRIPT_DIR/scriptGen'
$a setWallPape='xwallpaper --stretch $HOME/.pape.png'
$a susp='systemctl suspend'
$a sxiv='sxiv -ap'
$a userctl='systemctl --user'
$a xrdbload='xrdb load $HOME/.Xresources'

# Opening config files
$a vi3='vi $USER_CONFIG_DIR/i3/.config/i3/config'
$a vi3b='vi $USER_CONFIG_DIR/i3/.config/i3/i3blocks.conf'
$a vib='vi $USER_CONFIG_DIR/homeDirFiles/.bashrc'
$a viba='vi $USER_CONFIG_DIR/homeDirFiles/.bash_aliases'
$a vimrc='vi $USER_CONFIG_DIR/vim/.config/vim/vimrc'
$a vip='vi $USER_CONFIG_DIR/homeDirFiles/.profile'
$a vipoly='vi $USER_CONFIG_DIR/polybar/.config/polybar/config'
$a vis='vi $USER_CONFIG_DIR/st/.config/st/config.h'
$a vix='vi $USER_CONFIG_DIR/homeDirFiles/.xinitrc'

# Aliases related to directories
$a gM='cd /run/media/`whoami`'
$a gc='cd $HOME/.config'
$a gd='cd $HOME/docs'
$a gf='cd $USER_CONFIG_DIR'
$a gm='cd $HOME/music'
$a gp='cd $HOME/pix'
$a gr='cd $HOME/repos'
$a gs='cd $SCRIPT_DIR'
$a gtor='cd $HOME/downloads/seeds'
$a gv='cd $HOME/videos'
$a gw='cd $HOME/pix/miscWG'

a="alias"

# General aliases
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
$a ytd='$HOME/docs/scripts/youtubedl' # more general script than the two aliases 
$a ytpm='youtube-dl -f 18 -i -o "%(title)s.mp4"' # downloads [m]usic playlists in .mp4 format with their native filenames
$a ytpv='youtube-dl -f 137 -i -o "%(title)s.mp4-video"' # downloads [v]ideo playlists in .mp4 format with their native filenames
$a ytpa='youtube-dl -f 140 -i -o "%(title)s.m4a"' # downloads [v]ideo playlists in .mp4 format with their native filenames

# Command shorthand
$a bc='bc -lq'
$a beep='speaker-test -t sine -f 1000'
$a copy='xclip -selection clipboard -i'
$a cmatrix='cmatrix -u 10 -s'
$a grindCompare='py3 $HOME/docs/coffee/coffeegrindsize/App/dist/coffeegrindsize.app/Contents/Resources/coffeegrindsize.py & disown'
$a i3lockb='i3lock -c 000000'
$a n='function _title(){ rxvt -e $1 & disown; };_title' # gives windows titles (not useful w/o window titles displayed)
$a net='$HOME/docs/scripts/net'
$a protonvpn='$HOME/dls/builds/protonvpn-cli/pvpn/bin/protonvpn'
$a polyReload='/bin/bash $HOME/.files/polybar/.config/polybar/launch'
$a py3='`which python3`'
$a pyGen='pythonScriptGen'
$a scr='$HOME/docs/scripts/scriptGen'
$a setWallPape='xwallpaper --stretch ~/.pape.png'
$a susp='systemctl suspend'
$a sxiv='sxiv -apt'
$a xrdbload='xrdb load $HOME/.Xresources'

# Opening config files
$a vi3='vi $HOME/.files/i3/.config/i3/config'
$a vi3b='vi $HOME/.files/i3/.config/i3/i3blocks.conf'
$a vib='vi $HOME/.files/homeDirFiles/.bashrc'
$a viba='vi $HOME/.files/homeDirFiles/.bash_aliases'
$a vimrc='vi $HOME/.files/vim/.config/vim/vimrc'
$a vip='vi $HOME/.files/homeDirFiles/.profile'
$a vipoly='vi $HOME/.files/polybar/.config/polybar/config'
$a vis='vi $HOME/.files/st/.config/st/config.h'
$a vix='vi $HOME/.files/homeDirFiles/.Xresources'

# Aliases related to directories
$a gM='cd /run/media/`whoami`'
$a gc='cd $HOME/.config'
$a gd='cd $HOME/docs'
$a gf='cd $HOME/.files'
$a gm='cd $HOME/music'
$a gp='cd $HOME/pix'
$a gs='cd $HOME/docs/scripts'
$a gtor='cd $HOME/downloads/seeds'
$a gv='cd $HOME/vids'
$a gw='cd $HOME/pix/miscWG'

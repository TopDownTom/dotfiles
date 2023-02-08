set runtimepath^=$USER_CONFIG_DIR/vim/.config/vim runtimepath+=$USER_CONFIG_DIR/vim/.config/vim/after
let $packpath = &runtimepath
source $USER_CONFIG_DIR/vim/.config/vim/vimrc

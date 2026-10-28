# Display the git branch info
function gitDirInfo {
  findGitDirs
}

# check and display if currently in a SSH session
function checkSSHSess {
  checkIfSSHCon
}

# Get the PWD, and change $HOME to ~
function setTitlePWD() {
  printf '\e]0;%s\a' "${PWD/#"${HOME}"/\~}"
}

# LaTeX function for assigning a 'root document'. See vimrc.
function texedit() {
  local tex_root doc

  case $# in
    0) echo "Usage: texedit [tex_root [file]]" >&2; return 2 ;;
    1) tex_root=$1; doc=$1 ;;
    2) tex_root=$1; doc=$2 ;;
    *) echo "Usage: texedit [tex_root [file]]" >&2; return 2 ;;
  esac

  TEX_ROOT="$tex_root" vi "$doc"
}

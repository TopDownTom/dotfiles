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
  TEX_ROOT="$1" vi "$2"
}

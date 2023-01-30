# Display the git branch at the git root directory
function gitBranch {
  findGitBranches; [[ $? -eq 3 ]] && git branch 2>/dev/null | awk '/\*/{print $2}'
}
function gitTag {
  findGitBranches; [[ $? -eq 3 ]] && git describe 2>/dev/null && [ $? -eq 128 ] && echo "x.x"
}
function gitPorcelain {
  findGitBranches; [[ $? -eq 3 ]] && git status --porcelain 2>/dev/null | awk '{print $1}' | uniq -c | tr -d '\n' | sed -r 's/[[:blank:]]+//g; s/([[:digit:]])([[:alpha:]])/\1\2 /g'
}
function gitAheadBehind {
  findGitBranches; [[ $? -eq 3 ]] && git status -b --short 2>/dev/null | awk '/##/{print $3" "$4}'
}

git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

export PS1='\[\033[1;33m\]\W/ \[\033[1;36m\]\t \[\033[1;32m\]$(git_branch)\[\033[0m\] $ '

set -o vi

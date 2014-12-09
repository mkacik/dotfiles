function __get_ruby_gemset {
  local gemset=$(rvm current | grep '@' | cut -d'@' -f2)
  local ruby=$(ruby -v | cut -f2 -d' ' | cut -f1 -d'p' )
  if [ -z "$gemset" ]; then
    echo "$ruby"
  else
    echo "$gemset@$ruby"
  fi
}

function __get_git_branch {
  local branch=$(git branch 2>/dev/null | grep -e '^*' | cut -f2 -d ' ')
  if [ ! -z "$branch" ]; then
    echo "[$branch] "
  fi
}

# Set prompt colors
PS1="\[\e]0;\H \w\007\][\D{%R %Z}] "
PS1="$PS1\[\e[01;32m\]\u@\h\[\e[0m\] "
PS1="$PS1\[\e[0m\]\$(__get_git_branch)"
PS1="$PS1\[\e[01;34m\]\w:\[\e[00m\] "

export PS1

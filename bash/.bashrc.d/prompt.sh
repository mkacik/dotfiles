function get_ruby_gemset {
  local gemset=$(rvm current | grep '@' | cut -d'@' -f2)
  local ruby=$(ruby -v | cut -f2 -d' ' | cut -f1 -d'p' )
  if [ -z "$gemset" ]; then
    echo "$ruby"
  else
    echo "$gemset@$ruby"
  fi
}

function get_git_branch {
  local branch=$(git branch 2>/dev/null | grep -e '^*' | cut -f2 -d ' ')
  if [ -z "$branch" ]; then
    echo "-"
  else
    echo "$branch"
  fi
}

# Set prompt colors
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:"
PS1="$PS1\[\033[01;35m\]\$(get_git_branch)\[\033[00m\]:"
PS1="$PS1\[\033[01;36m\]\$(get_ruby_gemset)\[\033[00m\]:"
PS1="$PS1\[\033[01;34m\]\w\[\033[00m\]\$ "

export PS1

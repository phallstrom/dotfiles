# If we're in a git repository return the branch name, otherwise nothing.
function ps1_git {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ${ref#refs/heads/} "
}

function ps1_ruby {
  if [[ -n $RBENV_SHELL ]]; then
    rbenv version-name
  else
    ruby --version | cut -d' ' -f2
  fi
}

PS1=''

PS1=$PS1'\[\e[38;5;15;48;5;4m\]'           # white on blue
PS1=$PS1' $(ps1_ruby) '                    # ruby
PS1=$PS1'\[\e[38;5;4;48;5;2m\]'            # blue on green
PS1=$PS1''
PS1=$PS1'\[\e[38;5;15;48;5;2m\]'           # white on green
PS1=$PS1'$(ps1_git)'                       # git branch
PS1=$PS1'\[\e[38;5;2;48;5;4m\]'            # green on blue
PS1=$PS1''
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'           # white on blue
PS1=$PS1' \w '                             # relative working directory
PS1=$PS1'\[\e[0m\]\[\e[38;5;4m\]'          # blue on default
PS1=$PS1''
PS1=$PS1'\n'                               # newline
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'           # white on blue
PS1=$PS1' \$'                              # $
PS1=$PS1'\[\e[0m\]\[\e[38;5;4m\]'          # blue on default
PS1=$PS1''
PS1=$PS1'\[\e[0m\]'                        # reset color
PS1=$PS1' '                                # space color

unset PROMPT_DIRTRIM
PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'

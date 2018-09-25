# If we're in a git repository return the branch name, otherwise nothing.  
function ps1_git {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ${ref#refs/heads/} "
}

function ps1_aws {
  [[ -n $VAULTED_ENV ]] || return
  ps1=""
  ps1=$ps1'\[\e[38;5;15;48;5;1m\]'            # white on red
  ps1=$ps1" AWS@$(echo $VAULTED_ENV | tr '[:lower:]' '[:upper:]') " # AWS@INSOPS
  echo "$ps1"
}

PS1=''
PS1=$PS1$(ps1_aws)                         # AWS@INSOPS
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'           # white on blue
PS1=$PS1' $(rvm-prompt v)$(rvm-prompt g) ' # ruby@gemset
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

PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'

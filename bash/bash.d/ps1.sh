# If we're in a git repository return the branch name, otherwise nothing.  
function ps1_git {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ${ref#refs/heads/} "
}

function ps1_upper_aws_creds_name {
  echo $AWS_CREDS_NAME | tr '[:lower:]' '[:upper:]'
}

PS1=''
if [[ -n $AWS_CREDS_NAME ]]
then
  PS1=$PS1'\[\e[0;31m\]'                      # red text
  PS1=$PS1'\[\e[38;5;15;48;5;1m\]'            # white on red
  PS1=$PS1' AWS@$(ps1_upper_aws_creds_name) ' # AWS@INSOPS
  # PS1=$PS1'\[\e[38;5;1;48;5;4m\]'             # red on blue
  # PS1=$PS1''
fi
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'              # white on blue
PS1=$PS1' $(rvm-prompt v)$(rvm-prompt g) '    # ruby@gemset
PS1=$PS1'\[\e[38;5;4;48;5;15m\]'              # blue on white
PS1=$PS1''
PS1=$PS1'$(ps1_git)'                          # git branch
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'              # white on blue
PS1=$PS1''
PS1=$PS1' \w '                                # relative working directory
PS1=$PS1'\[\e[0m\]\[\e[38;5;4m\]'             # blue on default
PS1=$PS1''
PS1=$PS1'\n'                                  # newline
PS1=$PS1'\[\e[38;5;15;48;5;4m\]'              # white on blue
PS1=$PS1' \$'                                 # $
PS1=$PS1'\[\e[0m\]\[\e[38;5;4m\]'             # blue on default
PS1=$PS1''
PS1=$PS1'\[\e[0m\]'                           # reset color
PS1=$PS1' '                                   # space color
export PS1

# ps1="\[\e[0;34m\]"                         # blue text
# if [[ "$_system_name" != "OSX" ]]
# then
#   ps1=$ps1"\u@\h"                          # user@host
# fi


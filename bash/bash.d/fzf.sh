export FZF_DEFAULT_COMMAND='rg -l ""'
export FZF_DEFAULT_OPTS='--height 99% --reverse --color=16'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

eval "$(fzf --bash)"


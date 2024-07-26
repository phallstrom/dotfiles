# Setup fzf
# ---------
if [[ -d "/usr/local/opt/fzf/bin" && ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

[[ -d "/usr/local/opt/fzf" ]] && opt_fzf=/usr/local/opt/fzf
[[ -d "/usr/share/fzf" ]] && opt_fzf=/usr/share/fzf

if [[ -n "$opt_fzf" ]]; then
  # Auto-completion
  # ---------------
  [[ $- == *i* ]] && source "$opt_fzf/shell/completion.bash" 2> /dev/null

  # Key bindings
  # ------------
  source "$opt_fzf/shell/key-bindings.bash"

  export FZF_DEFAULT_COMMAND='rg -l ""'
  export FZF_DEFAULT_OPTS='--height 99% --reverse --color=16'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  _fzf_compgen_path() {
    rg -l "" "$1"
  }
fi

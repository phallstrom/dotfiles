function psg() {
   ps auxwww | grep -i $1 | grep -v grep
} 

function cdr {
  cwd=$PWD
  while [[ ! -f "$cwd/Rakefile" && ! -f "$cwd/Gemfile" && "$cwd" != "$HOME" ]]
  do
    cwd=${cwd%\/*}
  done
  cd $cwd
}

alias ls='ls -F'
alias ll='ls -l'
alias la='ls -a'
alias lal='ls -la'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias bandw='gsed -r "s/\x1b\[([0-9]{1,2}(;[0-9]{1,2})*)?[m|K]//g"'
alias be='bundle exec'

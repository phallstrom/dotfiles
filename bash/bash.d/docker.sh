# https://github.com/docker/compose/issues/3106
export COMPOSE_HTTP_TIMEOUT=86400

alias dc='docker-compose'

if [[ -x $(which dinghy) ]]; then
  st_mtime=0
  eval `stat -qs $HOME/.bash_dinghy`
  now=$(date +%s)
  delta=$(($now - $st_mtime))
  [[ $delta -gt 86400 ]] && dinghy shellinit > $HOME/.bash_dinghy
  source $HOME/.bash_dinghy
fi



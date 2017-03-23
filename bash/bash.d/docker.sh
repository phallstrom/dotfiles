dinghy () {
  $(command dinghy shellinit)
  unset -f dinghy
  command dinghy "$@"
}

docker () {
  if [[ -d ~/.dinghy ]]; then
    $(command dinghy shellinit)
    export DOCKER_MACHINE_IP=`dinghy ip`
  fi
  unset -f docker
  command docker "$@"
}

docker-compose () {
  if [[ -d ~/.dinghy ]]; then
    $(command dinghy shellinit)
    export DOCKER_MACHINE_IP=`dinghy ip`
  fi
  unset -f docker-dompose
  command docker-compose "$@"
}

# https://github.com/docker/compose/issues/3106
export COMPOSE_HTTP_TIMEOUT=86400

alias dc='docker-compose'

# https://github.com/docker/compose/issues/3106
export COMPOSE_HTTP_TIMEOUT=86400
export DOCKER_SCAN_SUGGEST=false

alias dc='docker compose'
alias d='docker'

complete -F _docker d
complete -F _docker_compose dc

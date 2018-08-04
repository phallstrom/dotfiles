export EDITOR=vim
export VISUAL=vim
export LESS="-ErX $LESS"
export GREP_OPTIONS="--exclude=\*.svn\* --exclude=\*.git\* --exclude=\*.rsync_cache\* --exclude=*\.swp"

PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
PATH="$PATH:node_modules/.bin"
export PATH

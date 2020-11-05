# history
export HISTFILE="$HOME/.zhistory" # Don't forget to give permission `600`
HISTSIZE=10000
SAVEHIST=1000000
setopt EXTENDED_HISTORY
setopt hist_ignore_dups
setopt inc_append_history
function history-all { history -E 1 }

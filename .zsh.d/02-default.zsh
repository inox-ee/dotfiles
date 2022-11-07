# general
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

## settings
# setopt no_beep

# keybind
bindkey -e
bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "^Q" backward-kill-word # push-line
bindkey "^W" forward-word # backward-kill-word
bindkey "^S" backward-word # history-incremental-search-forward

# enable zsh default function
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 100
zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':completion:*' recent-dirs-insert both

# history
export HISTFILE="$HOME/.zhistory" # Don't forget to give permission `600`
HISTSIZE=10000
SAVEHIST=1000000
HISTORY_IGNORE="(pwd|l|l[sal]|clear|cl)"
setopt EXTENDED_HISTORY
setopt hist_ignore_dups
setopt inc_append_history
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_no_store
function history-all { history -E 1 }
zshaddhistory() {
  local line=${1%%$'\n'}
  local cmd=${line%% *}
  [[ ${cmd} != (l|l[sal])
        && ${cmd} != (m|man)
        && ${cmd} != (pwd)
        && ${cmd} != (cl|clear)
  ]]
}


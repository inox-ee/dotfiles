# Setting some applications

# fzf
[ -f $ZDOTDIR/.fzf.zsh ] && source $ZDOTDIR/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 60% --reverse --border'

# rbenv
if whence -w rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
if whence -w pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipenv
export PIPENV_VENV_IN_PROJECT=true


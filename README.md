# Dotfiles for inox-ee

## environments

- WSL2
- zsh
  - zinit
  - p10k

## setup

```zsh
$ git clone git@github.com:inox-ee/dotfiles.git
$ echo (export ZDOTDIR="$HOME/dotfiles"\nsource $ZDOTDIR/.zshenv) > ~/.zshenv
$ ln -siv $ZDOTDIR/.gitconfig
$ ln -siv $ZDOTDIR/.vim
$ ln -siv $ZDOTDIR/.wslconfig
```

## other setup

- ssh
- install zinit, fzf
- aws
- etc...

## Caution!

1. This repository does not preserve `.zhistory`.

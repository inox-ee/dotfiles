#!/bin/sh

while true; do
    read -p "Do you want to run $0? (y/n)" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

# =====
# install zsh
# =====
if ! $(which zsh); then sudo apt install zsh; fi

# =====
# set zsh and create ~/.zshrc
# =====
if [ $SHELL != "$(which zsh)" ]; then chsh -s $(which zsh); fi

ZSHENV="$HOME/.zshenv"
if ! [ -f $ZSHENV ]; then
  echo export ZDOTDIR=\$HOME/dotfiles\\nsource \$ZDOTDIR/.zshenv\\n > $ZSHENV
fi

# =====
# remove unnnecessary files
# =====
ARCHIVEDIR="$HOME/.archives"
mkdir -p $ARCHIVEDIR
for i in $(cd $HOME; ls -A); do
  if [ $HOME/$i != $ARCHIVEDIR -a $HOME/$i != $ZSHENV ]; then
    mv $HOME/$i $ARCHIVEDIR
  fi
done

# =====
# continue to setup.zsh
# =====
echo "\e[32m[Success to install ZSH]\e[m After restart terminal, \e[30;43m please run setup.sh\e[m"

while true; do
    read -p "Do you restart terminal? (y/n)" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit 0;;
        * ) echo "Please answer yes or no.";;
    esac
done
exec zsh


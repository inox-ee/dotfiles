#!/bin/zsh

echo -n "Do you want to run $0?(y/N): "; read -q && echo "" || exit 0

# =====
# install powerline fonts
# =====
echo "\e[33m[WARNING] If you haven't install powerline fonts, please access to https://nerdfonts.com. Download FiraMono Nerd Font and install it.\e[m"

# =====
# change apt mirror server
# =====
sudo sed -i.bak -e "s%http://\(jp\.\)*archive\.ubuntu\.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list

# =====
# create sym
# =====
TARGET=(".gitconfig" ".vim")
for i in $TARGET; do
  ! [ -h $HOME/$i ] && ln -siv $ZDOTDIR/$i $HOME
done


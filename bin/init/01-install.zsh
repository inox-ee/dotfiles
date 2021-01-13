#!/bin/zsh

echo -n "Do you want to run $0?(y/N): "; read -q && echo "" || exit 0

# =====
# install essentials
# =====
(sudo apt install -y build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev \
  python3-distutils)

# =====
# install zinit (skip recommended plugins)
# =====
# # you don't need to do anything.

# =====
# isntall pip
# =====
echo -n "$(python3 --version), is it ok?(y/N): "
if read -q && echo ""; then
  curl https://bootstrap.pypa.io/get-pip.py | python3
  echo $(pip --version)
else
  echo "\e[31m[CAUTION!] please install Python 3.0.0>\e[m"
fi

# =====
# install fzf
# =====
if ! [ -d $HOME/.fzf ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
  echo "\e[33m[WARNING] please enable fzf-keybinding and disable other settings.\e[m"
  $HOME/.fzf/install
  rm $HOME/.fzf.bash
  rm $HOME/.fzf.zsh
fi

# =====
# install vim-hybrid
# =====
mkdir -p ~/.vim/colors
(cd $ZDOTDIR/.vim/colors && curl -O https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim)

# =====
# install rbenv
# =====
if ! whence -w rbenv; then
  git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
fi

# =====
# install trash-cli
# =====
whence -w pip && whence -w trash || pip install trash-cli

# =====
# install tree
# =====
whence -w tree || sudo apt install tree

# =====
# install expect (for `unbuffer` command)
# =====
whence -w unbuffer || sudo apt install expect


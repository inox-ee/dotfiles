# Dotfiles for inox-ee

## environments

- WSL2
- zsh
  - zinit
  - p10k

## setup

### WSL2

1. Official documents
   > <https://docs.microsoft.com/ja-jp/windows/wsl/install-win10>
2. Download Linux Kernel Update Program Package
   ダウンロードして実行 : <https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi>
   if some error occured ("This update only applies to machines with the WSL"), copy `wsl_update_x64.msi` to `C:\Windows\System32\lxss\tools\`
3. Set WSL2 to default

```powershell
> wsl --set-default-version 2
> wslconfig \setdefault Ubuntu-20.04
```

4. Download Linux Distribution
   Download _Ubuntu 20.04 LTS_ from Microsoft Store.
5. Setup new Distribution
   Input ID & password.

### Linux

1. Change apt mirror server

```sh
sudo sed -i.bak -e "s%http://jp.archive.ubuntu.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list
```

2. Install essentials

```bash
sudo apt install build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev
```

3. Install zsh

```bash
$ sudo apt install zsh
$ chsh -s $(which zsh)
```

### dotfiles

1. Initial setup

```zsh
$ git clone git@github.com:inox-ee/dotfiles.git
$ echo (export ZDOTDIR="$HOME/dotfiles"\nsource $ZDOTDIR/.zshenv) > ~/.zshenv
$ ln -siv $ZDOTDIR/.gitconfig
$ ln -siv $ZDOTDIR/.vim
$ ln -siv $ZDOTDIR/.wslconfig
```

2. Install dependencies

```zsh
# install zinit (skip recommended plugins)
## if some scripts are written in .zshrc, delete it.
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
# install fzf
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
```

## other setup

- ssh
- aws

## Caution!

1. This repository does not preserve `.zhistory`.

# Dotfiles for inox-ee

![dotfiles](./misc/imgs/dotfiles.gif)

## Environments

- OS: Ubuntu20.04 on WSL2 (Ubuntu18.04 is also operability confirmed.)
- SHELL: Zsh
  - Plugin manager: [zinit](https://github.com/zdharma/zinit)
  - Color theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

### Other Environments

- macOS: <https://gitlab.com/ino-playground/dotfiles-macos>

## How to setup

The first step is to enable WSL2, and then install dotfiles.
There are two ways to set up the shell environments.

## Step 1 - Enable WSL2

1. Official documents
   > <https://docs.microsoft.com/ja-jp/windows/wsl/install-win10>
2. Download Linux Kernel Update Program Package
   Download and Execute : <https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi>
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

#### [WSL2] Trouble Shooting

1. Do not forget to enable WSL and VM

```powershell
# Run as administrator
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatfrm /all /norestart
## and restart.
```

2. If a error occured: "This update only applies to machines with the Windows Subsystem for Linux"

copy `wsl_update_x64.msi` to `C:\Windows\System32\lxss\tools\` and execute.

## Step 2. - Install Dotfiles

### Option 1 - Automatic Installation (Recommended)

The easiest way to install dotfiles is to execute:

```sh
$ git clone https://github.com/inox-ee/dotfiles.git
$ ~/dotfiles/initial.sh
# >>> Done
$ ~/dotfiles/setup.zsh
```

This will install dotfiles and complete your own zsh environment.

### Option 2 - Manual Installation

<details>
<summary>Details of manual installation (May not be the latest version)</summary>

#### Linux

1. Change apt mirror server

```sh
sudo sed -i.bak -e "s%http://\(jp\.\)*archive\.ubuntu\.com/ubuntu/%http://ftp.riken.go.jp/Linux/ubuntu/%g" /etc/apt/sources.list
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

#### dotfiles

1. Initial setup

```zsh
$ git clone git@github.com:inox-ee/dotfiles.git
$ echo export ZDOTDIR="$HOME/dotfiles"\\nsource $ZDOTDIR/.zshenv\\n > ~/.zshenv
$ ln -siv $ZDOTDIR/.gitconfig
$ ln -siv $ZDOTDIR/.vim
$ ln -siv $ZDOTDIR/.wslconfig
```

2. Install dependencies

```zsh
# install zinit (skip recommended plugins)
# # you don't need to do anything.
# install fzf
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
# # remove _.fzf.zsf_ because it is in dotfiles.
# install vim-hybrid
$ mkdir ~/.vim/colors
$ (cd ~/$ZDOTDIR/.vim/colors && curl -O https://raw.githubusercontent.com/w0ng/vim-hybrid/master/colors/hybrid.vim)
# install powerline font
# # Access to https://nerdfonts.com. Download _FiraMono Nerd Font_ and install it.
# install rbenv
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
# install pip
$ curl https://bootstrap.pypa.io/get-pip.py | python
# install trash-cli
$ pip install trash-cli
```

</details>

## other setup

- ssh
- aws

## Caution!

1. This repository does not preserve `.zhistory`.


# How to install...

## Go

```shell-session
# Download go
$ curl -OL https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
# unpack go.tar.gz
$ sudo tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
# add PATHs to .zshrc
### export PATH="$PATH:/usr/local/go/bin"
### export GOPATH=$HOME/go
# check installation
$ go version

# if upgrade
# delete current go
$ sudo rm -rf /usr/local/go
# refer to the above (Download the latest version, and unpack ...)
```

- ref: <https://golang.org/doc/install>

(after 2023/02/24)

```shell-session
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```

- ref: https://github.com/golang/go/wiki/Ubuntu

## Protobuf

```bash
# Download protobuf
$ curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip
# (if needed) install unzip
$ sudo apt update && sudo apt install unzip
# unzip protoc.zip
$ unzip ./protoc-3.14.0-linux-x86_64.zip -d .protoc3
# check installation
$ protoc --version
```

- ref: none

## Node (nvm & npm & yarn)

```bash
# Download and install nvm
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
# check node versions --remote
$ nvm ls-remote
# check node versions --local
$ nvm ls
# install node-latest
$ nvm install node
# install node-lts/*
$ nvm install lts/*
# change default node
$ nvm alias default v**.**.**
# Download and install yarn
$ curl -o- https://yarnpkg.com/install.sh | bash
# (if needed) update yarn version 1.* -> 2.*
$ yarn set version berry
```

- ref: <https://yarnpkg.com/getting-started/install>
- warning: yarn V2 is seriously different from V1.


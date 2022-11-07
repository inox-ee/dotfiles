# Aliases
alias ls='ls --group-directories-first --human-readable --color -F'
alias l='ls -la'
alias rm='echo "This is not the command you are looking for."; false'
alias ln='ln -iv'
alias adb='/mnt/c/Users/ddz92/AppData/Local/Android/Sdk/platform-tools/adb.exe'
# alias vpn-elab="ssh -D 10080 user@elab-gw.ic.i.u-tokyo.ac.jp"
alias dc='docker-compose'
alias cl='clear'

## Ruby
alias ber='bundle exec rails'
alias berspec='bundle exec rspec'
alias update-rbenv='cd ~/.rbenv && git pull && cd ~/.rbenv/plugins/ruby-build && git pull'

## Python
alias python='python3'
alias prp='poetry run python'

## git
alias gad='git add'
alias gada='git add .'
alias gcm='git commit -m'
alias gfe='git fetch --prune'
alias gps='git push origin HEAD'
alias gsw='git switch'
alias gswd='git switch develop'
alias grsa='git restore .'

# Marp <https://github.com/marp-team/marp-cli>
alias marp-npx='npx -y @marp-team/marp-cli@latest'
alias marp-docker='docker run -it --name=marp-docker --rm -v "$(pwd):/home/marp/app" -e MARP_USER=$(id -u):$(id -g) -e LANG="ja_JP.UTF-8" marpteam/marp-cli --allow-local-files'


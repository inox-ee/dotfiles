# Aliases
alias ls='ls --group-directories-first --color -F'
alias l='ls -la'
alias ber='bundle exec rails'
alias berspec='bundle exec rspec'
alias python='python3'
alias rm='echo "This is not the command you are looking for."; false'
alias ln='ln -iv'
# alias ventus='cd ~/Ventus/Orical_api && sudo service redis-server start && docker start mysql-server && docker-compose -f ./docker/elasticsearch/docker-compose.yml up -d && docker ps -a'
# alias ventus-stop='cd ~/Ventus/Orical_api && sudo service redis-server stop && docker stop mysql-server && docker-compose -f ./docker/elasticsearch/docker-compose.yml down -v && docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'
alias adb='/mnt/c/Users/ddz92/AppData/Local/Android/Sdk/platform-tools/adb.exe'
alias vpn-elab="ssh -D 10080 user@elab-gw.ic.i.u-tokyo.ac.jp"


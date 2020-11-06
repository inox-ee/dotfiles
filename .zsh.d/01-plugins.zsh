# My Zsh plugin

## Zsh-Users
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-completions
zinit load zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

## Prezto
zinit snippet PZT::modules/helper/init.zsh
zinit snippet PZT::modules/utility/init.zsh
zinit snippet PZT::modules/directory/init.zsh
zinit snippet PZT::modules/completion/init.zsh

# others
# zinit load b4b4r07/enhanced # This is not working, so run `source ~/.enhanced/init.sh`


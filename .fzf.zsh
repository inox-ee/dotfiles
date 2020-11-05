# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ddz92478/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ddz92478/.fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/home/ddz92478/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ddz92478/.fzf/shell/key-bindings.zsh"

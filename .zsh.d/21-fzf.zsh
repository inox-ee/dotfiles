# ref: https://petitviolet.hatenablog.com/entry/20190708/1562544000

export FZF_CTRL_T_COMMAND="find . -not -path '*/\.git/*'"

function select_cdr(){
    local selected_dir=$(cdr -l | awk '{ print $2 }' | \
        fzf --preview 'f() { sh -c "ls -hFGlA $1" }; f {}')
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N select_cdr
bindkey "^k^o" select_cdr

function select_ccd(){
    local selected_dir=$(\ls -la | grep "^d" | awk '{ print $9 }' | \
      fzf --preview 'f() { sh -c "ls -hFGlA $1" }; f {}')
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N select_ccd
bindkey "^k^l" select_ccd

# git statusで対象となるファイルのgit diffみながらファイルを選択する
function select_file_from_git_status() {
  git status -u --short | \
    fzf -m --ansi --reverse --preview 'f() {
      local original=$@
      set -- $(echo "$@");
      if [ $(echo $original | grep -E "^M" | wc -l) -eq 1 ]; then # staged
        git diff --color --cached $2
      elif [ $(echo $original | grep -E "^\?\?" | wc -l) -eq 0 ]; then # unstaged
        git diff --color $2
      elif [ -d $2 ]; then # directory
        ls -la $2
      else
        git diff --color --no-index /dev/null $2 # untracked
      fi
    }; f {}' |\
    awk -F ' ' '{print $NF}' |
    tr '\n' ' '
}

# ↑の関数で選んだファイルを入力バッファに入れる
function insert_selected_git_files(){
    LBUFFER+=$(select_file_from_git_status)
    CURSOR=$#LBUFFER
    zle reset-prompt
}
zle -N insert_selected_git_files
bindkey "^g^s" insert_selected_git_files

# ↑の関数で選んだファイルをgit addする
function select_git_add() {
    local selected_file_to_add="$(select_file_from_git_status)"
    if [ -n "$selected_file_to_add" ]; then
      BUFFER="git add $(echo "$selected_file_to_add" | tr '\n' ' ')"
      CURSOR=$#BUFFER
    fi
    zle accept-line
}
zle -N select_git_add
bindkey "^g^a" select_git_add


autoload -Uz catch
autoload -Uz throw

function gittemplate() {
  if [ $# -ne 2 ]; then
    echo "Specify a source Git repogitory and new project name"
    return
  fi

  {
    git clone --depth 1 $1 $2 || throw 'NetworkException'
    cd $2 || throw 'NotFoundException'
    echo "current directory: $(pwd) ok?(y/N): "; read -q || throw 'InvalidError'
    echo ""
    trash ./.git
    git init
    git add .
    git commit -m "Initial Commit"
    git log --oneline
    echo "done"
  } always {
    if catch '*'; then
      case $CAUGHT in
        (*)
          echo "error"
          ;;
      esac
    fi
  }
  return
}

function grepex() {
  grep -C 1 "$1" -rn ./ --exclude-dir=".git" --color="always"
}

function treeex() {
  tree -aFC -L 2
}


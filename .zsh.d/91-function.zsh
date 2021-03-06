autoload -Uz catch
autoload -Uz throw

function gittemplate() {
  local -A opthash
  zparseopts -D -A opthash -- -branch:

  if [[ -n "${opthash[(i)--branch]}" ]]; then
    echo "-s option : ${opthash[--branch]}"
  fi

  if [ $# -ne 2 ]; then
    echo "Specify a source Git repogitory and new project name"
    return
  fi

  {
    if [[ -n "${opthash[(i)--branch]}" ]]; then
      git clone -b ${opthash[--branch]} --depth 1 $1 $2 || throw 'NetworkException'
    else
      git clone --depth 1 $1 $2 || throw 'NetworkException'
    fi
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

function leetgode() {
  if [ $# -ne 2 ]; then
    echo "指定された引数は $# 個です。" 1>&2
    echo "実行するには問題番号とタイトルを指定してください。" 1>&2
    return
  fi

  CURRENTPATH=$(pwd)

  if [ ${CURRENTPATH##*/} != leetgode ]; then
    echo "現在のディレクトリは ${CURRENTPATH} です。" 1>&2
    echo "実行するには path/to/leetgode に移動してください。" 1>&2
    return
  fi

  {
    local response=$(curl -LOfsS -w '%{http_code}\n' "https://raw.githubusercontent.com/aQuaYi/LeetCode-in-Go/master/Algorithms/$1.$2/$2_test.go")
    if [ $response -eq 200 ]; then
      mkdir -p "./leetcode/$1.$2"
      mv ./$2_test.go $_/
      cd $_
      touch "$2.go" && touch "README.md" && echo "create $1.$2/$2.go, $2_test.go"
    else
      throw "HTTP Error: $response"
    fi
  } always {
    if catch '*'; then
      case $CAUGHT in
        (*)
          echo $CAUGHT
          ;;
      esac
    fi
  }
  return
}

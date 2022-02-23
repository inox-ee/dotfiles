# ref: https://qiita.com/Suzuki09/items/80fbf9c6fcffa5c6b6b4

ZSHHOME="${ZDOTDIR}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
     for i in $ZSHHOME/*; do
         [[ ${i##*/} = *.zsh ]] &&
             [ \( -f $i -o -h $i \) -a -r $i ] && . $i
     done
fi

export PATH="$HOME/.poetry/bin:$PATH"

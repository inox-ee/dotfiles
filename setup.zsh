#!/bin/zsh

# =====
# continue to setup
# =====

INIT="${ZDOTDIR}/bin/init"

if [ -d $INIT -a -r $INIT -a -x $INIT ]; then
  for i in $INIT/*; do
    [ ${i##*.} = zsh ] && [ -f $i -a -r $i ] && $i
  done
fi


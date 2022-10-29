#!/usr/bin/env bash

source $HOME/.config/vars

if [ ! -z $BAT ]; then
    PREVIEW="bat --style=numbers --color=always {}"
elif [ ! -z $PREVIEW_SH ]; then
    PREVIEW="preview.sh {}"
else
    echo "Brak programu 'bat' i skryptu 'preview.sh', należy doinstalować jeden z nich"
    exit
fi

SEARCH=$(sk --ansi -i -c 'rg --color=always --hidden --line-number "{}"' \
    --bind "ctrl-p:toggle-preview" --preview "$PREVIEW" \
    --preview-window=down:50%:hidden)

readarray -td: array <<<"$SEARCH"

FILE=${array[0]}
LINE=${array[1]}
ARRAY_NOE=${#array[@]}

if [ $ARRAY_NOE -gt 1 ]; then
    $EDITOR "$FILE" +$LINE
fi

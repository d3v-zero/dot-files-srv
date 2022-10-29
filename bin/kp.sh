#!/usr/bin/env bash

# PROCES=$(ps -hxo pid,cmd | fzf -m --height=100% --header='[kill:process]' --prompt "Wyszukaj: " | awk '{print $1}')
# [ -z $PROCES ] || kill -9 $PROCES

PROCESY=$(ps -hxo pid,cmd | fzf -m --reverse --height=100% --header='[kill:process]' --prompt "Wyszukaj: " | awk '{print $1}')
PROCESY_ARRAY=($PROCESY)

for ITEM in "${PROCESY_ARRAY[@]}"; do
    echo "Zabijam proces $ITEM :("
    kill -9 $ITEM
done

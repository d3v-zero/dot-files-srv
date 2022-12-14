#!/usr/bin/env bash

shopt -s nocasematch

if [ $(which sk) ]; then
    FUZZY="sk"
elif [ $(which fzf) ]; then
    FUZZY="fzf"
fi

# PAKIET=$(dnf search "$1" | "$FUZZY")
PAKIET=$(cat ~/tmp/dnf-list.txt | "$FUZZY")
if [ -n "$PAKIET" ]; then
    PAKIET=$(echo "$PAKIET" | cut -f 1 -d : | tr -d '[:space:]')
    echo -n "Zainstalować $PAKIET [T/n]: "
    read -r ODP
    case $ODP in
        t)
            sudo dnf install $PAKIET
            ;;
        n)
            echo "OK"
            ;;
        *)
            sudo dnf install $PAKIET
            ;;
    esac
fi

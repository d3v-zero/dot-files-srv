#!/usr/bin/env bash

shopt -s nocasematch

SYSTEM=$($HOME/bin/detect-os.sh sys)

if [ "$SYSTEM" == "Fedora" ]; then
    UPD_CMD="sudo dnf update"
fi

if [ "$SYSTEM" == "CentOS" ]; then
    UPD_CMD="sudo yum update"
fi

if [ "$SYSTEM" == "Ubuntu" ]; then
    UPD_CMD="sudo apt update"
fi

if [ "$SYSTEM" == "Void" ]; then
    UPD_CMD="sudo xbps-install -Su"
fi

function tmux_update() {
    tmux -2 new -s SysUpdate "$UPD_CMD ; read -r -p 'Naciśnij coś... '"
}

if [ "$SSH_TTY" ]; then
    echo -n "Jesteś połączony przez SSH, chcesz uruchomić aktualizacji w sesji TMUX? [Y/n]: "
    read
    case $REPLY in
        y|t) tmux_update ; exit ;;
        n) $UPD_CMD ; exit ;;
        *) tmux_update ; exit ;;
    esac
fi

if [ "$TMUX" ]; then
    $UPD_CMD
else
    tmux_update
fi

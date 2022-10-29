#!/usr/bin/env bash

source $HOME/.config/vars

OBRAZ=$(fzf -q .vhd)

if [ -z $OBRAZ ]; then
    echo "Nie wybrałeś kontenera."
    exit
fi

NAZWA_KONTENERA=${OBRAZ%.*}

$SUDO cryptsetup luksOpen $OBRAZ $NAZWA_KONTENERA
ls -l /dev/mapper/$NAZWA_KONTENERA
$SUDO cryptsetup -v status $NAZWA_KONTENERA
mkdir -p $NAZWA_KONTENERA
$SUDO mount /dev/mapper/$NAZWA_KONTENERA $NAZWA_KONTENERA
# $SUDO chown myUserName /mnt/encryptedVolume

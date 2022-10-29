#!/usr/bin/env bash

NAZWA_KONTENERA=$(find /dev/mapper/* | grep -v control | fzf)

if [ -z $NAZWA_KONTENERA ]; then
    echo "Nie wybrano kontenera."
    exit
fi

$SUDO cryptsetup -v status $NAZWA_KONTENERA
$SUDO umount $NAZWA_KONTENERA
$SUDO cryptsetup luksClose $NAZWA_KONTENERA

#!/usr/bin/env bash

if [ -z "$1" ]; then
    read -p "Podaj nazwę szukanego procesu: "
    ps ax | grep -i "$REPLY" | grep -v pg.sh
else
    ps ax | grep -i "$1" | grep -v pg.sh
fi

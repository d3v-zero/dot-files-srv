#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    /usr/bin/man
else
    if MANPATH=/usr/share/man/pl man -w $* >/dev/null 2>/dev/null; then
        MANPATH=/usr/share/man/pl /usr/bin/man $* | col -b | /usr/bin/nvim -u $HOME/.config/nvim/man.vim -
    elif man -w $* >/dev/null 2>/dev/null; then
        /usr/bin/man $* | col -b | /usr/bin/nvim -u $HOME/.config/nvim/man.vim -
    else
        echo "Brak strony: $*"
    fi
fi

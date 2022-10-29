#!/usr/bin/env bash

# alias do edycji skryptu to: .df

. ~/.config/vars

ARR=(
    ~/.bashrc
    ~/.config/aliasy
    ~/.config/bmdirs
    ~/.config/nvim/init.vim
    ~/.config/vars
    ~/.gitconfig
    ~/.ssh/config
    ~/.tmux.conf
    ~/.vim/vimrc
    )

PLIK=$(printf '%s\n' "${ARR[@]}"|fzf)

if [ "$PLIK" ]; then
   $EDITOR "$PLIK"
fi

#!/usr/bin/env bash

shopt -s nocasematch

BACKUP_DIR="$HOME/.backup"
SCRIPT_DIR="$PWD"
BIN_DIR="$HOME/bin"

mkdir -p "$BACKUP_DIR"
mkdir -p "$BIN_DIR"
mkdir -p "$HOME/tmp"
mkdir -p "$HOME/.config/nvim"

function aliasy() {
    cd "$HOME"

    while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
        if [ ! -L "$LINE" ]; then
            if [ -f "$LINE" ]; then
                cp -R "$LINE" "$BACKUP_DIR/"
            fi
            rm -rf "$LINE"
            ln -sf "$SCRIPT_DIR/$LINE" "$LINE"
        fi
    done < "$SCRIPT_DIR/install-files"
}

aliasy

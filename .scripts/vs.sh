#!/usr/bin/env bash

source $HOME/.config/vars

if [[ $# == 0 ]]; then

    if [ -f $(which bat) ]; then
        $EDITOR "$(fzf -e --preview 'bat --style=numbers --color=always {} | head -500')"
    else
        $EDITOR "$(fzf -e --preview 'cat {}')"
    fi
else
    $EDITOR "$@"
fi

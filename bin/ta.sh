#!/usr/bin/env bash

SESJA=$(tmux ls | cut -f 1 -d : | fzf)

[ ! -z $SESJA ] && tmux atta -t $SESJA

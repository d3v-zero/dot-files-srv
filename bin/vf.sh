#!/usr/bin/env bash

source $HOME/.config/vars

sk | xargs -r -I % $EDITOR %

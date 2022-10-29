#!/usr/bin/env bash

if [ -z $1 ]; then
    echo
    echo Podaj nazwę konta.
    echo
    read -p "Podaj nazwę hosta: " NAZWA
    NAZWA=$(echo "$NAZWA" | tr ' ' '-')
    gopass edit otp/$NAZWA
else
    NAZWA=$(echo "$@" | tr ' ' '-')
    gopass edit otp/$NAZWA
fi

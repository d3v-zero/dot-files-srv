#!/usr/bin/env bash

echo $PWD | sed "s|$HOME|~|" >> ~/.config/bmdirs
sort -o ~/.config/bmdirs ~/.config/bmdirs

echo "Hej, właśnie dodałem katalog $PWD do zakładek."

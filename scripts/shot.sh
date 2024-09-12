#!/bin/zsh


if (($# == 0)); then
        scrot -s /tmp/shot.png
        xclip -t image/png -selection clipboard < /tmp/shot.png
        rm /tmp/shot.png
fi 




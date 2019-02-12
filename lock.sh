#!/usr/bin/env bash

tmpbg='/tmp/screen.png'

scrot "$tmpbg"
# convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
# convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
convert "$tmpbg" -blur 0x8 "$tmpbg"
i3lock -u -i "$tmpbg"

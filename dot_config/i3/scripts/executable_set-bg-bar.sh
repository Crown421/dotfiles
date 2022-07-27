#!/usr/bin/env bash

# cache new random image
betterlockscreen -u ~/OneDrive/System/Wallpapers --fx none --display 1

# remove old cache
wal -c 

# run pywal (also sets wallpaper)
source ~/.config/polybar/material/scripts/pywal.sh ~/OneDrive/System/Wallpapers 
# ~/.cache/betterlockscreen/current/wall_resize.png

source ~/.config/polybar/launch.sh --material

# load from resources
xrdb -merge ~/.cache/wal/colors.Xresources

i3-msg -q reload

# dunst
killall -q dunst
dunst > /dev/null 2>&1 &
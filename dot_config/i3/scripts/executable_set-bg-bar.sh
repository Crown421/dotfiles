#!/usr/bin/env bash

# cache new random image
betterlockscreen -u ~/OneDrive/System/Wallpapers --fx none

# remove old cache
wal -c 

# run pywal (also sets wallpaper)
source ~/.config/polybar/material/scripts/pywal.sh ~/.cache/betterlockscreen/current/wall_resize.png

source ~/.config/polybar/launch.sh --material





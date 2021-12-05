#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && source $HOME/.cache/wal/colors.sh

killall dunst

# > /dev/null 2>&1 &

# dunst -config ~/.config/dunstrc \
dunst -lf  "${foreground:-#ffffff}" \
      -lb  "${background:-#eeeeee}" \
      -lfr "${background:-#dddddd}" \
      -nf  "${foreground:-#cccccc}" \
      -nb  "${background:-#bbbbbb}" \
      -nfr "${color1:-#aaaaaa}" \
      -cf  "${foreground:-#999999}" \
      -cb  "${background:-#888888}" \
      -cfr "${color3:-#777777}" &
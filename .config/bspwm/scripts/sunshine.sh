#/bin/bash
cvt 1920 1080 60
xrandr --output DP-2 --scale 0.75x0.675 --brightness 0
pkill -USR1 sxhkd; bspc wm -r
asusctl -n

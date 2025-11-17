#!/usr/bin/env bash
asusctl -k high
xrandr --output DP-2 --mode 2560x1600 --rate 240 --brightness 1
feh --bg-scale ~/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg

mv ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.sunshine
mv ~/.config/alacritty/alacritty.toml.bak ~/.config/alacritty/alacritty.toml

i3lock -i /home/aiden/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg --scale

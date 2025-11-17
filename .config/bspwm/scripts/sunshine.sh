#/bin/bash
xrandr --output DP-2 --mode 2560x1600 --scale-from 2560x1440 --rate 240 --brightness 0
asusctl -k off
feh --bg-scale ~/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg
mv ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.bak
mv ~/.config/alacritty/alacritty.toml.sunshine ~/.config/alacritty/alacritty.toml

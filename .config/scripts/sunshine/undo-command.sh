#!/bin/bash
# ============================================================
# Close all windows on the current monitor 
# ============================================================
for node in $(bspc query -N -m DP-0); do
    bspc node "$node" --close
done
bspc monitor DP-0 --remove
xrandr --output DP-0 --off

# ============================================================
# Resolution settings
# ============================================================
xrandr --output DP-2 --mode 2560x1600 --rate 240 --primary
bspc monitor DP-2 -d I II III IV V

# ============================================================
# Keyboard lighting settings
# ============================================================
asusctl -k high

# ===========================================================
# Wallpaper settings
# ============================================================
feh --bg-scale ~/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg

# ===========================================================
# Mouse movement settings
# ============================================================
read -r w h x y < <(xrandr --query | grep "^DP-2" | grep -oP '\d+x\d+\+\d+\+\d+' | tr 'x+' ' ')
xdotool mousemove $((x + w/2)) $((y + h/2))

# ============================================================
# Polybar settings
# ============================================================
sh ~/.config/polybar/launch.sh &

# ============================================================
# Lock screen
# ============================================================
i3lock -i /home/aiden/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg --scale

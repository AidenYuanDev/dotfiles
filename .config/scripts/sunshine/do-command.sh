#!/bin/bash
# ============================================================
# Resolution settings
# ============================================================
xrandr --output DP-2 --brightness 0
xrandr --output DP-0 --mode ${SUNSHINE_CLIENT_WIDTH}x${SUNSHINE_CLIENT_HEIGHT} --rate ${SUNSHINE_CLIENT_FPS} --primary

# ============================================================
# Polybar settings
# ============================================================
sh ~/.config/polybar/launch.sh &

# ============================================================
# Keyboard lighting settings
# ============================================================
asusctl -k off

# ===========================================================
# Wallpaper settings
# ============================================================
feh --bg-scale ~/Pictures/wallpaper/girl_glance_wreath_887235_300x168.jpg

# ===========================================================
# Mouse movement settings
# ============================================================
read -r w h x y < <(xrandr --query | grep "^DP-0" | grep -oP '\d+x\d+\+\d+\+\d+' | tr 'x+' ' ')
xdotool mousemove $((x + w/2)) $((y + h/2))

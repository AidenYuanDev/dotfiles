#!/bin/bash

SOURCE_DIR="$HOME"
DEST_DIR="$(realpath "$(dirname "$0")")"

BACKUP_ITEMS=(
    ".config/alacritty"
    ".config/bspwm"
    ".config/picom"
    ".config/polybar"
    ".config/rofi"
    ".config/sxhkd"
    ".config/fcitx5/conf/classicui.conf"
    ".zshrc"
    ".local/share/fcitx5"
    ".config/scripts"
)

for item in "${BACKUP_ITEMS[@]}"; do
    src="$SOURCE_DIR/$item"
    dest="$DEST_DIR/$item"
    
    if [ -e "$src" ]; then
        echo "  ✓ Copying: $item"
        mkdir -p "$(dirname "$dest")"
        rm -rf "$dest"
        cp -r "$src" "$dest"
    else
        echo "  ⚠ Not found: $item"
    fi
done

echo ""
echo "✓ Done!"

#!/bin/bash

SOURCE_DIR="$HOME/.config"
DEST_DIR="$(realpath $(dirname "$0"))/.config"

echo "${DEST_DIR}"

if [ ! -d "$SOURCE_DIR" ]; then
  echo -e "Creating destination directory: ${SOURCE_DIR}"
  mkdir -p ${SOURCE_DIR}
fi

if [ ! -d "$DEST_DIR" ]; then
  echo -e "Creating destination directory: $DEST_DIR"
  mkdir -p ${DEST_DIR}
fi

CONFIG_DIRS=("alacritty" "bspwm" "picom" "polybar" "rofi" "sxhkd")

echo -e "Copying configuration directories..."
echo ""

for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$SOURCE_DIR/$dir" ]; then
        echo -e "Copying $dir..."
        
        if [ -d "$DEST_DIR/$dir" ]; then
            rm -rf "$DEST_DIR/$dir"
        fi
        
        # Copy the directory
        cp -r "$SOURCE_DIR/$dir" "$DEST_DIR/"
        echo -e "  ✓ $dir copied successfully"
    else
        echo -e "⚠ Warning: $SOURCE_DIR/$dir not found, skipping"
    fi
done

echo ""
echo -e "✓ Configuration files copied successfully!"
echo ""
echo "Copied to: $DEST_DIR"

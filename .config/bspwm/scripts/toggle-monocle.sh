#!/bin/bash

# Get the ecurrent window layout
current_layout=$(bspc query -T -d | jq -r '.layout')

if [ "$current_layout" = "tiled" ]; then
    # Switch to Monocle to hide other windows
    bspc desktop -l monocle
    focused=$(bspc query -N -n focused)
    for node in $(bspc query -N -d -n .window); do
        [ "$node" != "$focused" ] && bspc node "$node" -g hidden=on
    done
else
    # Switch back to tiled and restore all hidden windows
    bspc desktop -l tiled
    for node in $(bspc query -N -d -n .hidden.window); do
        bspc node "$node" -g hidden=off
    done
fi

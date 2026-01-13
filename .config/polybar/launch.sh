#!/usr/bin/env bash
killall -q --wait polybar
PRIMARY=$(xrandr --query | grep " primary" | cut -d" " -f1)
MONITOR=$PRIMARY polybar main &!

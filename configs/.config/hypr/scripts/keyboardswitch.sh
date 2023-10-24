#!/usr/bin/env sh

# fcitx5 keyboard switcher
#
# This script is used to switch between different keyboard layouts.
# It is meant to be used with sxhkd.

# Get the current layout
layMain=$(fcitx5-remote -n)

# Switch to another layout
fcitx5-remote -t

# Get the new layout
layNew=$(fcitx5-remote -n)

# Send a notification
if [ "$layMain" != "$layNew" ]; then
    dunstify "t1" -i ~/.config/dunst/icons/keyboard.svg -a "$layNew" -r 91190 -t 800
    exit 0
fi

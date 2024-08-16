#!/bin/bash

if pgrep -x "hypridle" > /dev/null
then
    echo "hypridle is running. Killing the process..."
    pkill -x "hypridle"
    notify-send "Hypridle Killed"
else
    echo "hypridle is not running. Starting the program..."
    hypridle -c ~/.config/dotfiles/hyprland/scripts/hypridle.sh &
    notify-send "Hypridle Started"
fi


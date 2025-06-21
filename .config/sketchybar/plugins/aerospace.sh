#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on background.color=$TEXT label.color=$CRUST
else
    sketchybar --set $NAME background.drawing=off label.color=$TEXT
fi

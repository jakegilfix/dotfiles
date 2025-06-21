#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ $SELECTED = true ]; then
  sketchybar --set $NAME background.drawing=on \
                         background.color=$TEXT \
                         background.height=28 \
                         label.color=$CRUST \
                         icon.color=$CRUST
else
  sketchybar --set $NAME background.drawing=off \
                         label.color=$TEXT \
                         icon.color=$TEXT
fi

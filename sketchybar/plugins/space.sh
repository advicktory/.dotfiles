#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

source "$CONFIG_DIR/colors.sh"

if [ $SELECTED = true ]; then
    echo "$NAME"
    sketchybar --animate tanh 30 \
               --set $NAME background.drawing=on \
                         label.color=$DARKER_SemiLIGHT_BEIGE  \
                         icon.color=$SMOOTH_BEECH \
                         background.color=$EVERGLADE \
                         background.border_width=1 \
                         background.border_color=$Opacity25_SemiLIGHT_BEIGE \
    
else
    sketchybar --animate tanh 60 \
                --set $NAME background.drawing=off \
                         label.color=$SemiLIGHT_BEIGE \
                         icon.color=$CRICKET_GREEN
fi

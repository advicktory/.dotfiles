#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
    sketchybar --animate exp 7 --set front_app icon.y_offset=45 icon.y_offset=0 icon.y_offset=15 icon.y_offset=0 icon.y_offset=5 icon.y_offset=0 \
               --set $NAME icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")" 
fi

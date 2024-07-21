#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
    sketchybar  --animate sin 30 --set front_app icon.y_offset=100  \
                --set $NAME icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$INFO")" icon.y_offset=100 \
                --animate sin 30 --set front_app icon.y_offset=100 icon.y_offset=0 

fi

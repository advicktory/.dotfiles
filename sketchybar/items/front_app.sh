#!/bin/bash

# source "$CONFIG_DIR/colors.sh"

sketchybar --add item front_app left \
           --set front_app       background.color=$TRANSPARENT \
                                 background.padding_left=5 \
                                 background.padding_right=2 \
\
                                 icon.color=$SemiLIGHT_BEIGE \
                                 icon.font="sketchybar-app-font:Regular:17.0" \
                                 icon.padding_left=2 \
                                 icon.padding_right=2 \
                                 icon.y_offset=0 \
\
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched

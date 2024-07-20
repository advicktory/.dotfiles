#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=0x00000000 \
                                 icon.color=0xffffffff   \
                                 icon.font="sketchybar-app-font:Regular:17.0" \
                                 label.color=0xffffffff \
                                 label.font="$FONT:Regular:14.0" \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched

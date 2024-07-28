#!/bin/sh

source "$CONFIG_DIR/colors.sh"

properties=(
    icon="0"
    width=184

    background.height=20
    background.corner_radius=5
    background.padding_left=1

    align=center_left
    background.color=$WHITE
    script="$PLUGIN_DIR/dynamicIsland.sh"
)

sketchybar --add item dynIsland center \
           --set dynIsland "${properties[@]}" \
           --subscribe dynIsland mouse.entered mouse.exited
          

#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon=$sid                                  \
                              icon.padding_left=10 \
                              label.padding_right=1 \
                              label.font="sketchybar-app-font:Regular:17.0" \
                              label.padding_right=20                     \
                              label.y_offset=-1                          \
                              script="$PLUGIN_DIR/space.sh" \
                         background.height=32 \
                         background.corner_radius=7 \
                         # background.padding_right=5 \
                         # background.padding_left=5 
                         
done
sketchybar --add item space_separator left                             \
           --set space_separator icon="󰽥"                              \
                                 icon.color=$DISGUISE \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change

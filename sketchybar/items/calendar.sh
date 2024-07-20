# !/bin/sh

calendar=(
  icon=􀉉
  icon.font="$FONT:Light:15.0"
  label.align=right
  update_freq=10
  script="$PLUGIN_DIR/calendar.sh"
)

sketchybar --add item calendar right       \
           --set calendar "${calendar[@]}" \

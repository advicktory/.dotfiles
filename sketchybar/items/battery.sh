# !/bin/sh

battery=(
    script="$PLUGIN_DIR/battery.sh" 
    update_freq=30
    updates=on
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery power_source_change system_woke  

#!/bin/sh

source "$CONFIG_DIR/colors.sh"

if [ $SENDER = "mouse.entered" ]; then
    echo $SENDER
    sketchybar --set dynIsland width=300 \
                               background.height=40 \
                               background.clip=2.0


elif [[ $SENDER = "mouse.exited" ]]; then
    echo $SENDER
    sketchybar --set dynIsland width=184 \
                               background.height=20
fi

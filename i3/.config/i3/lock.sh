#!/bin/bash

IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot -z $IMAGE"

$SCREENSHOT
convert $IMAGE -blur "0x8" $IMAGE
i3lock -i $IMAGE
rm $IMAGE

#!/bin/sh

g73_home=$(dirname "$0")

current=$(cat /sys/class/leds/asus::kbd_backlight/brightness)
echo "current light level: $current"

if [ "$current" -gt 0 ]
then
    current=`expr $current - 1`
    echo "new light level: $current"
fi;

sudo $g73_home/light_.sh "$current"

#!/bin/sh

current=`cat /sys/class/leds/asus::kbd_backlight/brightness`
echo "current light level: $current"

if [ "$current" -gt 0 ]
then
    current=`expr $current - 1`
    echo "new light level: $current"
fi;

sudo /home/ktoso/g73/g73_light_.sh "$current"

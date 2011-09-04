#!/bin/sh

current=`cat /sys/class/leds/asus::kbd_backlight/brightness`
echo "current light level: $current"

if [ "$current" -gt 0 ]
then
    current=`expr $current - 1`
    echo "new light level: $current"
fi;

sudo ./light_.sh "$current"

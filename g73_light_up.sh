#!/bin/sh

current=`cat /sys/class/leds/asus::kbd_backlight/brightness`;

if [ "$current" -lt 3 ]
then
    current=`expr $current + 1`;
fi;

sudo /home/ktoso/g73/g73_light_.sh "$current" 2> /home/ktoso/g73/fail.log

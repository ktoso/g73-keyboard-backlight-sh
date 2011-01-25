#!/bin/sh

current=`cat /home/ktoso/.g73_key_light_state`;

if [ "$current" -lt 3 ]
then
    current=`expr $current + 1`;
fi;

echo $current > /home/ktoso/.g73_key_light_state
sudo /home/ktoso/g73/g73_light_.sh "$current" 2> /home/ktoso/g73/fail.log

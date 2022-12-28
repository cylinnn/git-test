#!/bin/bash
resolution="1920x960"
cvt_data=`cvt 1920 960 | grep 60.00\" | cut -d "\"" -f3`
screen_device=`xrandr --verbose | grep -v disconnected | grep connected | cut -d " " -f1`
xrandr --newmode "$resolution" $cvt_data
xrandr --addmode $screen_device "$resolution"
xrandr --output $screen_device --mode "$resolution"
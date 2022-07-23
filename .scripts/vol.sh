#!/bin/bash

line1=$(echo "mpc volume")
line2=$( sleep 1 && mpc status %volume%)
#line2=$(mpc current)
#line3=$(mpc status %currenttime% %totaltime%%percenttime% | head -n 1)

notify-send -i /usr/share/icons/Adwaita/scalable/emblems/emblem-music-symbolic.svg "$line1" "$line2"

#!/bin/bash

line1=$(echo "Now Playing")
line2=$(mpc --format %artist%\ -\ %title%)
#line2=$(mpc current)
#line3=$(mpc status %currenttime% %totaltime%%percenttime% | head -n 1)

notify-send -i /usr/share/icons/Adwaita/scalable/emblems/emblem-music-symbolic.svg "$line1" "$line2"

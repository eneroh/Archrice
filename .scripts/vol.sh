#!/bin/bash

# Script isn't very snappy, there is lag on notifications when updating sound. Has to be a better way in gnome. Maybe changing to dunst notifications instead.

line1=$(echo "mpc volume")
line2=$(mpc status %volume%)
#line2=$(mpc current)
#line3=$(mpc status %currenttime% %totaltime%%percenttime% | head -n 1)

notify-send -i /usr/share/icons/Adwaita/scalable/emblems/emblem-music-symbolic.svg "$line1" "$line2"

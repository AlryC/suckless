#!/bin/sh

feh --bg-scale ~/suckless/assets/wallpapers/current
setxkbmap pl,ru -option 'grp:caps_toggle'
picom &
dwmblocks &
pipewire &

while true; do
	# Log stderror to a file
	dbus-run-session -- dwm 2> ~/.dwm.log
	# No error logging
	# dbus-run-session -- dwm >/dev/null 2>&1
done

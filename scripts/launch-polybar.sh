#!/bin/sh


killall -q polybar

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload -c $HOME/.config/polybar/polybar.conf top & 
	done
else
	polybar --reload -c $HOME/.config/polybar/polybar.conf top & 
fi



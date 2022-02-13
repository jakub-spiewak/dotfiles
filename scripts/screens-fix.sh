#!/bin/sh

randroutput=$(xrandr --query | grep -w connected)


# if [[ $randroutput == *"DP-1-1"* ]]; then
# 	echo connected 
# 	xrandr --output DP-1-1 --mode 1920x1080 --scale 2x2
# fi

# if [[ $randroutput == *"DP-1-2"* ]]; then
# 	echo connected 
# 	xrandr --output DP-1-2 --mode 1920x1080 --scale 2x2
# fi


if [[ $randroutput == *"DP-1-2"* && $randroutput == *"DP-1-1"* ]]; then
	xrandr --output eDP-1 --mode 1920x1200 --pos 960x1080
	xrandr --output DP-1-2 --pos 0x0
	xrandr --output DP-1-1 --pos 1920x0
else
	xrandr --output eDP-1 --mode 3840x2400 --pos 0x0
fi

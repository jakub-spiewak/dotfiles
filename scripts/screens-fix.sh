#!/bin/sh

randroutput=$(xrandr --query | grep -w connected)


if [[ $randroutput == *"DP1-1"* ]]; then
	echo connected 
	xrandr --output DP1-1 --mode 1920x1080 --scale 2x2
fi

if [[ $randroutput == *"DP1-2"* ]]; then
	echo connected 
	xrandr --output DP1-2 --mode 1920x1080 --scale 2x2
fi


if [[ $randroutput == *"DP1-2"* && $randroutput == *"DP1-1"* ]]; then
	xrandr --output eDP1 --pos 1920x2160
	xrandr --output DP1-2 --pos 0x0
	xrandr --output DP1-1 --pos 3840x0
fi

#!/bin/sh


killall -q polybar

polybar -c $HOME/.config/polybar/polybar.conf mybar

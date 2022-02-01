#!/bin/sh

mkdir -p ~/.wallpapers

unsplash-wallpaper -w 3840 -h 2400 -q 'wallpapers' -d ~/.wallpapers &> /dev/null 

wallpaper_path=$(ls -t ~/.wallpapers/wallpaper* | head -n 1)

# wal -t -i ${wallpaper_path} &> /dev/null 
feh --bg-scale ~/.wallpapers

rm -r ~/.wallpapers

#!/bin/sh

mkdir -p ~/.config
mkdir -p ~/.scripts

cp -r config/* ~/.config
cp -r scripts/* ~/.scripts
cp -r etc/* /etc
cp -r home/* ~/.

#!/bin/sh
# xrandr --output DP-1 --rotate left
xrdb ~/Configs/.config/Xresources &
# xset r rate 160 30
hsetroot -fill ~/Configs/wallpaper.png
unclutter -idle 2 &
# sxhkd &
# tint2 &
exec spectrwm

#!/bin/sh

setbg &       # Set the background
sxhkd &       # Bind keys
unclutter &   # Remove mouse when idle
xcompmgr &    # xcompmgr for transparency
dunst &       # dunst for notifications
clipmenud &   # clipboard manager
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96
exec bspwm


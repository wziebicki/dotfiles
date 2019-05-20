#!/bin/sh

setbg &		    # Set the background
sxhkd &	      # Bind keys
unclutter &		# Remove mouse when idle
xcompmgr &		# xcompmgr for transparency
dunst &	      # dunst for notifications
exec i3


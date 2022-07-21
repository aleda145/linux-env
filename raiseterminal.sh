#!/bin/bash
# raise alacritty terminal on GNOME, will focus if exists, create if not
# add to keyboard shortcuts! I prefer super+"space bar"

if pgrep "alacritty" > /dev/null; then
  xdotool windowactivate "$(xdotool search --onlyvisible --class alacritty)"
else
  alacritty &
fi

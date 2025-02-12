#!/bin/bash
# raise zed on GNOME, will focus if exists, create if not
# add to keyboard shortcuts! I prefer super+"n"
logger "raise notes"
if pgrep "zed" > /dev/null; then
  echo "zed exists, changing"
  xdotool windowactivate "$(xdotool search --onlyvisible --class zed)"
else
   zed ~/Documents/notes.md
fi

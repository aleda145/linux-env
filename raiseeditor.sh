#!/bin/bash
# raise code on GNOME, will focus if exists, create if not
# add to keyboard shortcuts! I prefer super+"c"

if pgrep "code" > /dev/null; then
  echo "code exists, changing"
  xdotool windowactivate "$(xdotool search --onlyvisible --class code)"
else
  code &
fi

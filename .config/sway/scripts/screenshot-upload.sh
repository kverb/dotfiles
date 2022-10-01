#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot-upload | awk '{print tolower($1)}')
 
# requires custom grimshot with 'upload' action
case $selected in
  active)
    grimshot --notify upload active;;
  screen)
    grimshot --notify upload screen;;
  output)
    grimshot --notify upload output;;
  area)
    grimshot --notify upload area;;
  window)
    grimshot --notify upload window;;
esac

#!/bin/bash
selected=$(echo -e " Active\n Screen\n Output\n󰋱 Area\n Window\n" |
  fuzzel \
  -d \
  -R \
  -l 4 \
  -p ' '        \
  -w 20          \
  | awk '{print tolower($1)}')

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

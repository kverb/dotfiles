#!/bin/bash
 
selected=$(echo -e " Active\n Screen\n Output\n󰋱 Area\n Window\n" |
  fuzzel \
  -d \
  -R \
  -l 4 \
  -p ' '        \
  -w 20          \
  | awk '{print tolower($2)}')

 
case $selected in
  active)
    /usr/share/sway/scripts/grimshot --notify copy active;;
  screen)
    /usr/share/sway/scripts/grimshot --notify copy screen;;
  output)
    /usr/share/sway/scripts/grimshot --notify copy output;;
  area)
    /usr/share/sway/scripts/grimshot --notify copy area;;
  window)
    /usr/share/sway/scripts/grimshot --notify copy window;;
esac

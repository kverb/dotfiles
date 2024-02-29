#!/bin/bash
 
selected=$(echo -e " Active\n Screen\n Output\n󰋱 Area\n Window\n" |
  fuzzel \
  -d \
  -R \
  -l 4 \
  -p ' '        \
  -w 20          \
  | awk '{print tolower($2)}')

gs=~/.config/grimshot

 
case $selected in
  active)
    $gs --notify copy active;;
  screen)
    $gs --notify copy screen;;
  output)
    $gs --notify copy output;;
  area)
    $gs --notify copy area;;
  window)
    $gs --notify copy window;;
esac

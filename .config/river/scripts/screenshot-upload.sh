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

# requires custom grimshot with 'upload' action
case $selected in
  active)
    $gs --notify upload active;;
  screen)
    $gs --notify upload screen;;
  output)
    $gs --notify upload output;;
  area)
    $gs --notify upload area;;
  window)
    $gs --notify upload window;;
esac

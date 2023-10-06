#!/bin/bash
 
selected=$(echo -e " Active\n Screen\n Output\n󰋱 Area\n Window\n" |
  fuzzel \
  -d \
  -R \
  -l 4 \
  -p ' '        \
  -x 20          \
  -r 0           \
  -b 000000ff    \
  -t 00a595ff    \
  -s 00a48cff    \
  -S 000000ff    \
  -C 00a595ff    \
  -B 2           \
  -m bc00caff    \
  -M f09a1aff    \
  -w 60          \
  --show-actions \
  --line-height=20 \
  -f "Spleen 32x64:size=14" \
  | awk '{print tolower($1)}')

 
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

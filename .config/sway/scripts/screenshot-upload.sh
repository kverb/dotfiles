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

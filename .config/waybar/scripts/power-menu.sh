#!/bin/bash

entries="Logout Suspend Reboot Shutdown"

# selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.power --style=$HOME/.config/wofi/style.widgets.css | awk '{print tolower($1)}')

selected=$(printf '%s\n' $entries | fuzzel \
  -d \
  -R \
  -l 4 \
  -p ' '        \
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
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac

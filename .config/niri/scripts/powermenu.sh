#!/bin/bash

entries="Logout Suspend Reboot Shutdown"

selected=$(printf '%s\n' $entries | fuzzel \
  -d \
  -R \
  -l 4 \
  -p '⏻ '        \
  -x 20          \
  -w 20          \
  | awk '{print tolower($1)}')

case $selected in
  logout)
    niri msg action quit -s;;
  suspend)
    systemctl suspend;;
  reboot)
    systemctl reboot;;
  shutdown)
    systemctl poweroff -i;;
esac

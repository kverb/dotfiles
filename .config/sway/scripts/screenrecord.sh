#!/bin/bash
 
NOW=$( date '+%F_%H:%M:%S' )
cd ~/Videos
wf-recorder -g "$(slurp)" -f screencap-$NOW.webm -c vp9_vaapi -d /dev/dri/renderD128 

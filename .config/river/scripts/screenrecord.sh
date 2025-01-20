#!/bin/bash
 
NOW=$( date '+%F_%H:%M:%S' )
cd ~/Videos
wf-recorder -g "$(slurp)" -f screencap-$NOW.mp4 -x yuv420p

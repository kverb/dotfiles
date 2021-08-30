#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout  5 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --screenshots --clock --indicator-idle-visible \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--ignore-empty-password \
	--ring-color 2a2e38 \
	--key-hl-color 51afef \
	--text-color bbc2cf \
	--line-color 2a2e38 \
	--inside-color 242730 \
	--separator-color 00000000 \
	--fade-in 0.1 \
	--effect-scale 0.5 --effect-blur 7x3 --effect-scale 2 \
	--effect-vignette 0.5:0.5 \
# Kills last background task so idle timer doesn't keep running
kill %%

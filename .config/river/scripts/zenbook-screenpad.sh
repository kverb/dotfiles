#!/bin/bash

# Helper script for toggling the backlight on the screenpad
# requires asus-wmi https://github.com/Plippo/asus-wmi-screenpad
# bindsym this to XF86Launch7

# Define the device name
DEVICE='asus::screenpad'

# Get the current brightness value
CURRENT_BRIGHTNESS=$(brightnessctl -d "$DEVICE" get)

# Check if the current brightness is greater than 0
if [ "$CURRENT_BRIGHTNESS" -gt 0 ]; then
    # Save the current brightness value to a temporary file
    brightnessctl -d "$DEVICE" -s

    # Set the brightness to 0
    brightnessctl -d "$DEVICE" set 0
else
    # Restore the saved brightness value
    brightnessctl -d "$DEVICE" -r
fi

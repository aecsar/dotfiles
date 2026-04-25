#!/bin/bash
DEVICE="apple-inc.-apple-internal-keyboard-/-trackpad-1"
STATE_FILE="/tmp/touchpad_state"

if [ -f "$STATE_FILE" ]; then
    hyprctl keyword "device[$DEVICE]:enabled" true
    rm "$STATE_FILE"
else
    hyprctl keyword "device[$DEVICE]:enabled" false
    touch "$STATE_FILE"
fi

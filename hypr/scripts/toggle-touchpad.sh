#!/usr/bin/env bash

DEVICE="apple-inc.-apple-internal-keyboard-/-trackpad-1"
STATE_FILE="/tmp/touchpad_state"

if [[ -f "$STATE_FILE" ]]; then
    hyprctl eval "hl.device({ name = \"$DEVICE\", enabled = true })"
    rm -f "$STATE_FILE"
else
    hyprctl eval "hl.device({ name = \"$DEVICE\", enabled = false })"
    touch "$STATE_FILE"
fi

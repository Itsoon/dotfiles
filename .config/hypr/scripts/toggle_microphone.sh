#!/bin/bash

status=$(amixer get Capture | grep -o "\[on\]")

amixer set Capture toggle

if [ -z "$status" ]; then
    notify-send -t 1000 -u low "Microphone" "Enable"
else
    notify-send -t 1000 -u low "Microphone" "Disable"
fi

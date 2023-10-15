#!/bin/bash

status=$(playerctl status)

if [ "$status" == "Playing" ]; then
  playerctl pause
  notify-send -t 1000 -u low "Audio" "Pause"
else
  playerctl play
  notify-send -t 1000 -u low "Audio" "Play"
fi

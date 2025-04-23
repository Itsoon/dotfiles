#!/bin/bash

status=$(hyprctl getoption input:kb_variant | awk '/str:/ {print $2}' | sed 's/"//g')

if [ "$status" == "intl" ]; then
  hyprctl keyword input:kb_variant ""
  # notify-send -t 1500 -u low "Keyboard variant layout: Default"
else
  hyprctl keyword input:kb_variant "intl"
  # notify-send -t 1500 -u low "Keyboard variant layout: Intl"
fi

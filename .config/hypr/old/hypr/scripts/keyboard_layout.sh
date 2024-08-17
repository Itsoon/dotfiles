#!/bin/bash

status=$(hyprctl getoption input:kb_variant | awk '/str:/ {print $2}' | sed 's/"//g')

if [ "$status" == "intl" ]; then
  hyprctl reload
  notify-send -t 1500 -u low "Keyboard variant layout : default"
else
  hyprctl reload
  hyprctl keyword input:kb_variant intl
  notify-send -t 1500 -u low "keyboard variant layout : intl"
fi
#!/bin/bash

player_status=$(playerctl status)
on_battery_status=$(upower -d | grep -i "on-battery:" | awk '{print $2}')

if [ "$on_battery_status" == "yes" ]; then
  if [ "$player_status" == "Paused" ]; then
    systemctl suspend
  fi
fi

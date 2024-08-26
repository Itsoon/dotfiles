#!/bin/bash
brightnessctl -s

n=$(brightnessctl i | grep "Current brightness" | awk '{print $4}' | sed 's/[(),%]*//g')

current_brightness=$(printf "%d" "$n")

adjust_brightness() {
  local brightness=$1
  local decrement=$2

  while [ "$brightness" -ge "$decrement" ]; do
    for ((i = 0; i < decrement; i++)); do
      new_brightness=$((brightness - 1))
      brightnessctl set "$new_brightness%"
      sleep 0.008
      brightness=$((brightness - 1))
    done
    break
  done
}

if [ "$current_brightness" -gt 60 ]; then
  if [ "$current_brightness" -ge 50 ]; then
    adjust_brightness "$current_brightness" 50
  elif [ "$current_brightness" -ge 40 ]; then
    adjust_brightness "$current_brightness" 40
  elif [ "$current_brightness" -ge 30 ]; then
    adjust_brightness "$current_brightness" 30
  fi
else
  if [ "$current_brightness" -ge 10 ]; then
    adjust_brightness "$current_brightness" 10
  elif [ "$current_brightness" -ge 5 ]; then
    adjust_brightness "$current_brightness" 5
  elif [ "$current_brightness" -ge 2 ]; then
    adjust_brightness "$current_brightness" 2
  elif [ "$current_brightness" -ge 1 ]; then
    adjust_brightness "$current_brightness" 1
  fi
fi

n=$(brightnessctl i | grep "Current brightness" | awk '{print $4}' | sed 's/[(),%]*//g')
echo "Nouvelle luminosité: $n"

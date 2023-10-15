#!/bin/bash

network_status=$(sudo ip link show wlan0 | grep -o 'UP' | head -1)

if [ "$network_status" == "UP" ]; then
    sudo ip link set wlan0 down
    notify-send -t 1000 -u low "Wifi" "Disable"
else
    sudo ip link set wlan0 up
    notify-send -t 1000 -u low "Wifi" "Enable"
fi


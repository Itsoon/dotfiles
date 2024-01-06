#!/bin/bash

bluetooth_status=$(bluetoothctl show | grep "Powered: no" | sed -e 's/^[[:space:]]*Powered: no/Powered: no/'
)

if [ "$bluetooth_status" == "Powered: no" ]; then
    bluetoothctl power on
    notify-send -t 1000 -u low "Bluetooth" "Enable"
else
    bluetoothctl power off
    notify-send -t 1000 -u low "Bluetooth" "Disable"
fi


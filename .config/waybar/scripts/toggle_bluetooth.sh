#!/bin/bash

bluetooth_status=$(bluetoothctl show | grep "Powered: no" | sed -e 's/^[[:space:]]*Powered: no/Powered: no/'
)

if [ "$bluetooth_status" == "Powered: no" ]; then
    bluetoothctl power on
else
    bluetoothctl power off
fi


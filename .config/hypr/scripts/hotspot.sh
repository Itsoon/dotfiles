#!/bin/bash

status_h=$(sudo systemctl is-active create_ap.service)

if [[ $status_h == "active" ]]; then
	sudo systemctl stop create_ap.service
	notify-send "Hotspot" "Turn OFF"
else
	if sudo systemctl start create_ap.service; then
		sleep 1
		status_h2=$(sudo systemctl is-active create_ap.service)
		if [[ $status_h2 == "active" ]]; then
			notify-send "Hotspot" "Turn ON"
		else
			notify-send "Hotspot" "Failed to activate"
		fi
	else
		notify-send "Hotspot" "Failed to start service"
	fi
fi

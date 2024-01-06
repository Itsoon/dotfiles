wifi_status=$(nmcli radio wifi)
wifi_icon=""
if [ "$wifi_status" == "enabled" ]; then
	nmcli radio wifi off
else
	nmcli radio wifi on
fi
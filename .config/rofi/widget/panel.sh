#!/usr/bin/env bash

# Import Current Theme
theme="$HOME/.config/rofi/shared/style.rasi"

# Theme Elements
prompt='Panel'

list_col='2'
list_row='2'
win_width='450px'

# Options
bluetooth_status=$(bluetoothctl show | grep "Powered: no" | sed -e 's/^[[:space:]]*Powered: no/Powered: no/'
)
bluetooth_icon=""
if [ "$bluetooth_status" != "Powered: no" ]; then
    bluetooth_icon=""
fi


wifi_status=$(nmcli radio wifi)
wifi_icon=""
if [ "$wifi_status" = "enabled" ]; then
	wifi_icon=""
fi

layout=`cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2`
if [[ "$layout" == 'NO' ]]; then
	option_1=""
	option_2=""
	option_3=""
	option_4=""
else
	option_1="  ${wifi_icon}" # Wifi
	option_2=" ⏸" # Play pause
	option_3=" ${bluetooth_icon}" # Bluetooth
	option_4="" # Settings
fi

# Rofi CMD
rofi_cmd() {
	rofi \
		-theme-str "window {width: $win_width;}" \
		-theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: "";}' \
		-dmenu \
		-p "$prompt" \
		-markup-rows \
		-theme ${theme} \
		-hover-select
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		.config/rofi/widget/script/toggle_wifi.sh
	elif [[ "$1" == '--opt2' ]]; then
		playerctl play-pause
	elif [[ "$1" == '--opt3' ]]; then
		.config/rofi/widget/script/toggle_bluetooth.sh
	elif [[ "$1" == '--opt4' ]]; then
		.config/rofi/widget/script/settings.sh
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
    $option_4)
		run_cmd --opt4
        ;;
esac



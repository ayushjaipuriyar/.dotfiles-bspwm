#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/five.rasi"

# uptime=$(uptime -p | sed -e 's/up //g')
batcon=$(sudo manager.sh -rc | awk '{if (NR ==2 ) print$3}')
batrapid=$(sudo manager.sh -rc | awk '{if (NR ==1 ) print$3}')
# Options
shutdown=""
reboot=""
lock=""
rapid=""
cons=""
# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$cons\n$rapid"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 1)"
case $chosen in
$shutdown)
	sudo ryzenadj --tctl-temp=45 && powerprofilesctl set power-saver && sudo ryzenadj --power-saving && sudo manager.sh -s 3
	;;
$reboot)
	sudo ryzenadj --tctl-temp=60 && powerprofilesctl set balanced && sudo ryzenadj --power-saving && sudo manager.sh -s 1
	;;
$lock)
	sudo ryzenadj --tctl-temp=100 && powerprofilesctl set performance && sudo ryzenadj --max-performance && sudo manager.sh -s 2
	;;
$cons)
	if [[ "$batcon" == "On" ]]; then
		sudo manager.sh -sc 4
	else
		sudo manager.sh -sc 3
	fi
	;;
$rapid)
	if [[ "$batrapid" == "On" ]]; then
		sudo manager.sh -sc 2
	else
		sudo manager.sh -sc 1
	fi
	;;
esac

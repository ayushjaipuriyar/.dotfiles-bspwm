#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/five.rasi"

# uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""


# Variable passed to rofi
options="$shutdown\n$reboot\n$lock"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 1)"
case $chosen in
    $shutdown)
        sudo ryzenadj --tctl-temp=50 && powerprofilesctl set power-saver && sudo ryzenadj --power-saving
      ;;
    $reboot)
        sudo ryzenadj --tctl-temp=60 && powerprofilesctl set balanced && sudo ryzenadj --power-saving
      ;;
    $lock)
        sudo ryzenadj --tctl-temp=90 && powerprofilesctl set performance && sudo ryzenadj --max-performance
      ;;
esac

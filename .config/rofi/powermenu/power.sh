#!/usr/bin/env bash

theme="card_circle"
dir="$HOME/.config/rofi/powermenu"

rofi_command="rofi -theme $dir/$theme"
# style="square"

# rofi_command="rofi -theme ./apps.rasi"

current=$(sudo ryzenadj --info | grep apu-slow-limit | awk '{print $6/1}')     
stapm=$(sudo ryzenadj --info | grep 'STAPM VALUE' | awk '{print $5}')     
fast=$(sudo ryzenadj --info | grep 'PPT VALUE FAST' | awk '{print $6}')     
slow=$(sudo ryzenadj --info | grep 'PPT VALUE SLOW' | awk '{print $6}')     
# Links
silent=""
cool=""
fine=""
hot="龍"
performance=""

# Variable passed to rofi
options="$silent\n$cool\n$fine\n$hot\n$performance"

chosen="$(echo -e "$options" | $rofi_command -p "TDP = $current W | STAPM = $stapm | FAST = $fast | SLOW = $slow" -dmenu -selected-row 2)"

case $chosen in

  $silent)
    sudo ryzenadj --tctl-temp=55 && powerprofilesctl set power-saver  
    ;;
  $cool)
    sudo ryzenadj --power-saving && powerprofilesctl set power-saver
  $fine)
    sudo ryzenadj --stapm-limit=15000 --fast-limit=15000 --slow-limit=15000 --apu-slow-limit=15000
    ;;
  $hot)
    sudo ryzenadj --max-performance && powerprofilesctl set performance

  $performance)
    sudo ryzenadj --tctl-temp=110 && powerprofilesctl set power-saver
    ;;
esac

    # sudo ryzenadj --stapm-limit=10000 --fast-limit=10000 --slow-limit=10000 --apu-slow-limit=10000


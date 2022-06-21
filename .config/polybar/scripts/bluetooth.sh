#!/bin/sh

device=$(bluetoothctl info | awk '{if ( NR == 2 ) print $2}')
mouse="Bluetooth"
if [[ "$device" == "$mouse" ]]; then
	device=M337
fi

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
	echo "%{F#e06c75}"
else
	if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]; then
		echo ""
	fi
	echo "%{F#7aa2f7}"$device
fi

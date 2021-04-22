#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#EF5350}"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo ""
  fi
  #echo "%{F#2193ff}"
    bluetoothctl info | awk '{if ( NR == 2 ) print $2}'  
fi


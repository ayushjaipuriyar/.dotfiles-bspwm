#!/bin/bash

content=$(playerctl --player=ncspot,spotify metadata --format "{{ title }} - {{ artist }}")

if [ "$(playerctl --player=playerctld status)" = "Playing" ]; then
	echo " $content"
fi
if [ "$(playerctl --player=playerctld status)" = "Paused" ]; then
	echo " $content"
fi

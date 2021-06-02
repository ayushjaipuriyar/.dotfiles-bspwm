#!/bin/bash
if [ "$(playerctl status)" = "Playing" ]; then echo  
fi
if [ "$(playerctl status)" = "Paused" ]; then echo 
fi
if [ "$(playerctl status)" = "No players found" ]; then echo ""
fi

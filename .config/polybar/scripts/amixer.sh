#!/bin/bash
if [ "$(amixer | awk '{if(NR == 13) print $6}')" = "[on]" ]; then echo  
fi
if [ "$(amixer | awk '{if(NR == 12) print $6}')" = "[off]" ]; then echo "%{F#EF5350}"
fi

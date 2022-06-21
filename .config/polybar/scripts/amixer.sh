#!/bin/bash
if [ "$(amixer | awk '{if(NR == 13) print $6}')" = "[on]" ]; then echo "" 
fi
if [ "$(amixer | awk '{if(NR == 13) print $6}')" = "[off]" ]; then echo "%{F#e06c75}"
fi

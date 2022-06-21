temp=$(cat /sys/class/drm/card0/device/hwmon/hwmon*/temp1_input)
temp=$((temp / 1000))

if [[ $temp -lt 55 ]]; then
	echo "%{F#7aa2f7} $temp°C"
else
	echo "%{F#e06c75} $temp°C"
fi
# echo $temp

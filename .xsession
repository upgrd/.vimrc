#!/bin/bash
amixer set Master unmute &
setxkbmap us &
wmname LG3D &
setxkbmap us &
xrandr --output eDP1 --mode 1366x768 &
#feh --bg-scale ./Pictures/voy1.jpg &

if xrandr --output HDMI1 && echo $? = 0 ; then
xrandr --output HDMI1 --mode 1920x1080 --above eDP1
fi




# *** statbardwm ***
#(conky | while read LINE; do xsetroot -name "$LINE"; done &)

## battery power
#bat_int=$(acpi | cut -b 25,26)
##bat_int=$(cat /sys/class/power_supply/BAT1/capacity)
#while true
#do
    #xsetroot -name "$(date +"%a %b %d %R") |$(acpi | cut -d ':' -f 2,4)"
    #while [ $bat_int < 90 ]; 
    #do
        #xsetroot -name "$(date +"%a %b %d %R") |$(acpi | cut -d ':' -f 2,4)"
        #sleep 0.5
        #xsetroot -name "$(date +"%a %b %d %R") | ************* CHARGE *************"
        #sleep 0.5    
    #done
#done &
exec i3

#!/bin/bash
amixer set Master unmute &
setxkbmap us &
wmname LG3D &
setxkbmap us &
xrandr --output eDP1 --mode 1366x768 &
sleep 2; feh --bg-scale spock-bg.jpg &
xautolock -time 1 -locker slock


if xrandr --output HDMI1 && echo $? = 0 ; then
xrandr --output HDMI1 --mode 1920x1080 --right-of eDP1
fi


# *** statbardwm ***
#(conky | while read LINE; do xsetroot -name "$LINE"; done &)

# battery power
while true
do
    xsetroot -name "$(date +"%a %b %d %R") |$(acpi | cut -d ':' -f 2,4)"
    sleep 5
done &
exec dwm

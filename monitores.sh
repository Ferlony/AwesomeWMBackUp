#!/bin/sh
intern=eDP-1-1
extern=HDMI-0

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto --scale 1x1
else
    xrandr --output "$intern" --off --output "$extern" --auto --scale 1x1
fi

#!/bin/sh

# xrandr --output eDP-1 --scale 0.6x0.6
# xrandr --output HDMI-2 --pos 1152x-200 --rotate left
xrandr --output HDMI-2 --pos 0x0 --rotate normal #&& xrandr --output eDP-1 --off

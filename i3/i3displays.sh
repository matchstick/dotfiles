#!/bin/sh

# Test to see if the laptop is connected to an external display. 
# If so we want the external to be primary and on the left. 

NUMDISPLAYS=`xrandr  | grep connected | grep -v disconnected | wc -l`

if [ $NUMDISPLAYS = "2" ]
then
	xrandr \
	--output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
	--output eDP-1 --mode 2880x1620 --pos 3840x0 --rotate normal \
	--output DP-2 --off
else
	xrandr \
	--output eDP-1 --primary --mode 2880x1620 --pos 0x0 --rotate normal \
	--output DP-1 --off
	--output DP-2 --off
fi


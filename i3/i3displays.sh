#!/bin/sh

# Test to see if the laptop is connected to an external display.
# If so we want the external to be primary and on the left.

# This script is not portable but meant for my laptop setup.

NUMDISPLAYS=`xrandr  | grep " connected " | wc -l`

case $NUMDISPLAYS in
"2")
	xrandr --output eDP1 --mode 3840x2160 --pos 3840x0 --rotate normal \
	--output DP1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
	--output DP2 --off \
	--output DP3 --off \
	--output VIRTUAL1 --off
	;;
"1")
	xrandr \
	--output eDP1 --primary --mode 2880x1620 --pos 0x0 --rotate normal \
	--output DP1 --off \
	--output DP2 --off \
	--output DP3 --off \
	--output VIRTUAL1 --off
	;;
*)
	;;
esac

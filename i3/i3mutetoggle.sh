#!/bin/sh

# This file is here as the pulse audio system is broken.
# When you toggle the master to unmute it will also mute the speaker as it
# should.
# But it won't unmute the speaker when you want it to. Hence the need to do it
# explicitly.

MASTER_ON=`amixer get Master | grep '\[on\]' | wc -l`

if [ $MASTER_ON -eq 1 ]
then
	amixer set Master mute
	amixer set Speaker mute
else
	amixer set Master unmute
	amixer set Speaker unmute
fi



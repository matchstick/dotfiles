#!/bin/bash

# Just a script to randomly select png from a directory 
# for i3lock to use. 

PICDIR=$1
if [ ! -d "$PICDIR" ] 
then
	echo "$PICDIR does not exist."
	exit 1
fi
PIC="$PICDIR/"`ls $PICDIR | shuf -n 1`
# Run i3lock with custom background
i3lock -t -i $PIC

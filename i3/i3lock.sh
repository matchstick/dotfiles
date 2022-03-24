#!/bin/bash
PICDIR=$1
if [ ! -d "$PICDIR" ] 
then
	echo "$PICDIR does not exist."
	exit 1
fi
PIC="$PICDIR/"`ls $PICDIR | shuf -n 1`
echo $PIC
# Run i3lock with custom background
i3lock -t -i $PIC

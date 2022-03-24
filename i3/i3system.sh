#!/bin/sh

I3_BIN=$HOME/.config/i3/
LOCK_PICS=$HOME/.desk/lock

case "$1" in
    lock)
       $I3_BIN/i3lock.sh $LOCK_PICS
        ;;
    exit)
	i3-nagbar -t warning -m 'Do you really want to exit?' -f 'pango:monospace 40' -b 'Yes' 'i3-msg exit'
        ;;
    reboot)
	i3-nagbar -t warning -m 'Do you really want to reboot?' -f 'pango:monospace 40' -b 'Yes' 'systemctl reboot'
        ;;
    shutdown)
	i3-nagbar -t warning -m 'Do you really want to shutdown?' -f 'pango:monospace 40' -b 'Yes' 'systemctl poweroff'
        ;;
    *)
        echo "Usage: $0 {lock|exit|reboot|shutdown}"
        exit 2
esac

exit 0

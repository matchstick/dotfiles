#!/bin/sh

I3_BIN=$HOME/.config/i3/
LOCK_PICS=$HOME/.desk/lock

lock() {
	$I3_BIN/i3lock.sh $LOCK_PICS
}

# Dbus Send is used for ubuntu. For ArchLinux we have other techniques.
# TODO make this script portable for both distros.
# For now just remembering that the arg can be:
# "Suspend", "Reboot", "Hibernate"
dbus_send() {
	local cmd=$1
	dbus-send --system --print-reply \
	--dest=org.freedesktop.login1 /org/freedesktop/login1 \
	"org.freedesktop.login1.Manager.$cmd" boolean:true
}

case "$1" in
	lock)
		lock
	;;
	exit)
		i3-msg exit
	;;
	suspend)
		lock && systemctl suspend
	;;
	hibernate)
		systemctl hibernate
	;;
	reboot)
		reboot
	;;
	shutdown)
		systemctl poweroff
	;;
	*)
		echo "Usage: $0 {lock|exit|suspend|hibernate|reboot|shutdown}"
		exit 2
esac

exit 0

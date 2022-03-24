#!/bin/sh

I3_BIN=$HOME/.config/i3/
LOCK_PICS=$HOME/.desk/lock

lock() {
	$I3_BIN/i3lock.sh $LOCK_PICS
}

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
		lock && dbus_send "Suspend"
	;;
	hibernate)
		dbus_send "Hibernate"
	;;
	reboot)
		dbus_send "Reboot"
	;;
	shutdown)
		systemctl poweroff
	;;
	*)
		echo "Usage: $0 {lock|exit|suspend|hibernate|reboot|shutdown}"
		exit 2
esac

exit 0

#!/bin/bash

FILE=/sys/module/hid_apple/parameters/fnmode

if [[ ! -w $FILE ]]; then
	echo -n $'no permissions to modify.\ntry with sudo\n'
	exit 1
fi

if [[ -f $FILE ]]; then
	case $1 in
		-m)
			echo 1 | sudo tee /sys/module/hid_apple/parameters/fnmode
			echo -n $'\tswitched to multimedia\n'
			;;

		-fn)
			echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
			echo -n $'\tswitched to functional keys\n'
			;;

		--help)
			echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
			;;

		-h)
			echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
			;;

		*)
			echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
			;;
	esac
	exit 0
fi

echo -n $'\tno config to modify\n\tcheck the keyboard\n'
exit 1

#!/usr/bin/env sh

function fail_out(){
	echo "$@"
	exit
}

which scrot 1>/dev/null 2>/dev/null || fail_out "Well you need scrot for that, silly."

if [ -n "$1" ]; then
	scrot -z -d 5 "$@"
else
	scrot -z -d 5 ~/Screenshots/scrotshot_$(date "+%y-%m-%d_%H-%M-%S").png
fi


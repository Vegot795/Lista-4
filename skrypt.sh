#!/bin/bash

show_date() {
        date'+%Y-%m-%d'
}

create_logs() {
	local num_logs=${1:-100}
	local script_name=$(basename "$0-")
	local timestamp=$(date '+%Y-%m-%d %T' )

	for ((i=1, i<= num_logs; i++)); do
		echo "log $iL $script_name, $timestamp" > "log_$i.txt"
	done
}



case "$1" in 
	--date)
		show_date
		;;
	--logs)
		create_logs "$2"
		;;
esac

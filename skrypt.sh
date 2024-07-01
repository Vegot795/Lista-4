#!/bin/bash

show_date() {
        date'+%Y-%m-%d'
}

create_logs() {
	local script_name=$(basename "$0-")
	local timestamp=$(date '+%Y-%m-%d %T' )

	for ((i=1, i<= 10; i++)); do
		echo "log $iL $script_name, $timestamp" > "log_$i.txt"
	done
}

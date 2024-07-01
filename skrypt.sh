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

display_help() {
	echo "Użycie: $0 [OPCKJA]"
	echo "Dostepne dla uzytkownika opcje:"
	echo " -- date, -d Wyswietla date."
	echo " -- logs [liczba]. -l [liczba] tworzy podana liczbe plikow. Domyslna wartosc - 100"
	echo " -- help, -h Wyswietla pomoc dotyczaca opcji"

case "$1" in 
	--date|-d)
		show_date
		;;
	--logs|-l)
		create_logs "$2"
		;;
	--help|-h) 
		display_help
		;;
esac

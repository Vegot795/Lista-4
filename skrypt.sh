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
	echo " -- date, Wyswietla date."
	echo " -- logs [liczba} tworzy podana liczbe plikow. Domyslna wartosc - 100"
	echo " -- help Wyswietla pomoc dotyczaca opcji"

case "$1" in 
	--date)
		show_date
		;;
	--logs)
		create_logs "$2"
		;;
	--help) 
		display_help
		;;
esac

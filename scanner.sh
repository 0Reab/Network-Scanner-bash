#!/bin/bash

target="$1"
port_start=$2
port_end=$3

log="scan_results.log"
time_stamp=$(date +%Y-%m-%d-%H-%M-%S)


function usage() {
	echo "Usage: script.sh <ip/hostname> <port_start> <port_end>"
	
	[ "$1" == "args" ] && echo "Error: Number of arguments does not = 3"
	[ "$1" == "type" ] && echo "Error: Port must be an integer"
	[ "$1" == "port" ] && echo "Error: Port_start > port_end"
	
	exit 1
}


[ $# -ne 3 ] && usage "args"

[[ ! -n $port_start || ! -n $port_end ]] && usage "type"

[ $port_start -gt $port_end ] && usage "port"


function dns_enum() {
	nslookup "$target"
	dig "$target"
	host "$target"
}


function port_scan() {
	for port in $(seq $port_start $port_end); do
		timeout 1 bash -c "echo >/dev/tcp/$target/$port" 2>/dev/null &&
		echo "Port $port is open" ||
		echo "Port $port is closed"
	done
}


function main() {
	echo "Scanning: $target" >> "$log"
	echo "Time and date: $time_stamp" >> "$log"
	echo "Enumerating DNS..." ; dns_enum >> "$log"
	
	[ $? -eq 0 ] && echo "DNS enum complete" && grep 'name' < "$log"


	echo "Scanning ports..." ; port_scan >> "$log"

	[ $? -eq 0 ] && echo "Port scan complete" && grep 'open' < "$log"

	echo "Scan log saved - $(pwd)/$log"
}

main "$@"























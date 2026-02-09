# Port-and-DNS-Scanner

TCP connect scan via /dev/tcp.<br>
DNS enumerations with nslookup and dig.

## Description

The Port and DNS Scanner script is a Bash utility designed for basic network scanning.<br>
Enumerate DNS and do a TCP port scan within a specified port range.<br>
Quickly assess ports that accept TCP connection.

## Features

* DNS Enumeration: Uses nslookup, dig, and host commands to gather DNS information about the target.<br>
* Port Scanning: Scans a range of TCP ports on the target to identify open ports.<br>
* Logging: Outputs the results of the scan to a log file with a timestamp.<br>

## Usage

`./scanner.sh example.com 20 80`<br>

Usage: `./scanner.sh <ip/hostname> <port_start> <port_end>`<br>
* `<ip/hostname>`: The IP address or hostname of the target to scan.<br>
* `<port_start>`: The starting port number for the port scan.<br>
* `<port_end>`: The ending port number for the port scan.<br><br>

This command will scan the target example.com for open TCP ports from 20 to 80 and perform DNS enumeration.

## Output

* The scan results are saved to a log file named scan_results.log in the current directory.<br>
* The log file includes the target information, the time and date of the scan, and the results of DNS enumeration and port scanning.

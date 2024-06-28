# Port-and-DNS-Scanner

# Description
The Port and DNS Scanner script is a Bash utility designed for basic network reconnaissance. It performs DNS enumeration and a TCP port scan within a specified range on a given target. This can be useful for security professionals and network administrators to quickly assess the available services on a host.

# Features
DNS Enumeration: Uses nslookup, dig, and host commands to gather DNS information about the target.
Port Scanning: Scans a range of TCP ports on the target to identify open ports.
Logging: Outputs the results of the scan to a log file with a timestamp.

# Usage
Usage: port_dns_scanner.sh <ip/hostname> <port_start> <port_end>
<ip/hostname>: The IP address or hostname of the target to scan.
<port_start>: The starting port number for the port scan.
<port_end>: The ending port number for the port scan.

# Example
./scanner.sh example.com 20 80
This command will scan the target example.com for open TCP ports from 20 to 80 and perform DNS enumeration.

Output:
The scan results are saved to a log file named scan_results.log in the current directory. The log file includes the target information, the time and date of the scan, and the results of DNS enumeration and port scanning.

# Port Scanner Script

A simple Bash script to perform port scanning on a target host using `nc` (Netcat). This script allows you to scan for open TCP ports within a specified range.

## Features

- Scan a target IP address or hostname for open TCP ports.
- Customizable port range.
- Simple and lightweight, using built-in Unix tools.

## Prerequisites

- Bash shell
- `nc` (Netcat)

Install Netcat if not available:
```bash
sudo apt install netcat  # Debian/Ubuntu
sudo yum install nc      # RHEL/CentOS
./port_scanner.sh 192.168.1.1 20 80

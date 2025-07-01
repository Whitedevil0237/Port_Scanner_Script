#!/bin/bash

# Simple Port Scanner using netcat (nc)

# Check if correct number of arguments is given
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <target-host> <start-port> <end-port>"
    exit 1
fi

TARGET=$1
START_PORT=$2
END_PORT=$3

echo "Scanning host: $TARGET"
echo "Ports: $START_PORT to $END_PORT"
echo "-------------------------------"

for ((port=$START_PORT; port<=$END_PORT; port++))
do
    nc -z -v -w 1 $TARGET $port 2>&1 | grep -q succeeded
    if [ $? -eq 0 ]; then
        echo "Port $port is OPEN"
    else
        echo "Port $port is CLOSED"
    fi
done




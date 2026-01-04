#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="

echo "Hostname:"
hostname

echo "-----------------------------"

echo "Disk Usage:"
df -h

echo "-----------------------------"

echo "Memory Usage:"
free -h

echo "-----------------------------"

echo "Uptime:"
uptime

echo "-----------------------------"

SERVICE="sshd"
STATUS=$(systemctl is-active $SERVICE)

if [ "$STATUS" = "active" ]
then
    echo "SSHD is running"
else
    echo "SSHD is NOT running"
fi



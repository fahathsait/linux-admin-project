#!/bin/bash

SERVICE="nfs"

STATUS=$(systemctl is-active $SERVICE)

if [ "$STATUS" = "active" ]
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is NOT running"
fi

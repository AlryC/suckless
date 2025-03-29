#!/bin/bash

SSID=$(wpa_cli -i wlo1 status | awk -F= '/^ssid/ {print $2}')
if [ -n "$SSID" ]; then
    echo "$SSID "
else
    echo "Disconnected "
fi


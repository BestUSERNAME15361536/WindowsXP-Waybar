#!/bin/bash

if [[ "$1" == "toggle" ]]; then
    bluetoothctl power off && exit || bluetoothctl power on
fi

state=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ "$state" == "yes" ]]; then
    echo ""
else
    echo "󰂲"
fi

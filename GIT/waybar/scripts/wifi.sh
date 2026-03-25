#!/bin/bash

if [[ "$1" == "toggle" ]]; then
    nmcli radio wifi off && exit || nmcli radio wifi on
fi

state=$(nmcli radio wifi)

if [[ "$state" == "enabled" ]]; then
    echo ""
else
    echo "󰖪"
fi

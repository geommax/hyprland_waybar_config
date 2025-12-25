#!/bin/bash

chosen=$(nmcli -t -f IN-USE,SSID,SECURITY,SIGNAL device wifi list \
  | sed 's/^*:/ /; s/:/ | /g' \
  | wofi --dmenu --prompt "WiFi")

[ -z "$chosen" ] && exit

ssid=$(echo "$chosen" | awk -F' \\| ' '{print $1}' | sed 's/ //')

nmcli device wifi connect "$ssid"


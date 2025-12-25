#!/bin/bash
free | awk '/Mem:/ { printf "󰘚 %d%%\n", $3*100/$2 }'

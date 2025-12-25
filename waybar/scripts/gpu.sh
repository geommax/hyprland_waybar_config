#!/bin/bash
if command -v nvidia-smi >/dev/null; then
  nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits \
    | awk '{printf "󰢮 %d%%\n", $1}'
elif [ -f /sys/class/drm/card0/device/gpu_busy_percent ]; then
  printf "󰢮 %s%%\n" "$(cat /sys/class/drm/card0/device/gpu_busy_percent)"
else
  echo "󰢮 N/A"
fi


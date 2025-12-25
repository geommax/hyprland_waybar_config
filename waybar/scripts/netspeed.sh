#!/bin/bash
iface=$(ip route | awk '/default/ {print $5}')
rx1=$(cat /sys/class/net/$iface/statistics/rx_bytes)
tx1=$(cat /sys/class/net/$iface/statistics/tx_bytes)
sleep 1
rx2=$(cat /sys/class/net/$iface/statistics/rx_bytes)
tx2=$(cat /sys/class/net/$iface/statistics/tx_bytes)

rx=$(( (rx2-rx1)/1024 ))
tx=$(( (tx2-tx1)/1024 ))

echo "󰛴 ${rx}K 󰛶 ${tx}K"


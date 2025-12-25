#!/bin/bash
awk -v prev_idle="$prev_idle" -v prev_total="$prev_total" '
/^cpu / {
  idle=$5
  total=0
  for(i=2;i<=NF;i++) total+=$i
  if (NR==1) {
    diff_idle=idle-prev_idle
    diff_total=total-prev_total
    printf " %d%%\n", (100*(diff_total-diff_idle)/diff_total)
  }
}' /proc/stat


#!/bin/bash
case "$1" in
  poweroff) systemctl poweroff ;;
  reboot) systemctl reboot ;;
  lock) hyprctl dispatch exec hyprlock ;;
esac


#!/usr/bin/env bash

HYPRCTL="hyprctl keyword animations:enabled"

CURRENT_STATE=$(hyprctl getoption animations:enabled | awk 'NR==1 {print $NF}')

if [ "$CURRENT_STATE" = "1" ]; then
  $HYPRCTL 0
else
  $HYPRCTL 1
fi

#!/usr/bin/env bash

WAYBAR_PROCESS=".waybar-wrapped"

if pgrep -x "$WAYBAR_PROCESS" > /dev/null; then
    pkill -x "$WAYBAR_PROCESS"
else
    waybar &
fi

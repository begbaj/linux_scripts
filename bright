#!/bin/bash

OUTPUT="$1"
CURRENT_BRIGHTNESS=$(xrandr --verbose | grep -m 1 $OUTPUT -A 10 | grep "Brightness" | sed 's/^[ \t]*Brightness:[ \t]*\([0-9.]*\).*/\1/')

if [[ "$2" == "inc" ]]; then
  NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS + 0.1" | bc)
elif [[ "$2" == "dec" ]]; then
  NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS - 0.1" | bc)
else
  echo "Invalid argument. Use 'inc' or 'dec' to specify whether to increase or decrease the brightness."
  exit 1
fi

if [[ $(echo "$NEW_BRIGHTNESS > 1.0" | bc) -eq 1 ]]; then
  NEW_BRIGHTNESS=1.0
elif [[ $(echo "$NEW_BRIGHTNESS < 0.0" | bc) -eq 1 ]]; then
  NEW_BRIGHTNESS=0.0
fi

# Set the new brightness using xrandr
xrandr --output "$OUTPUT" --brightness "$NEW_BRIGHTNESS"

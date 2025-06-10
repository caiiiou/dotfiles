#!/bin/bash

NAME="music"
CACHE_FILE="/tmp/sketchybar-music.txt"

JSON=$(osascript -l JavaScript ~/.config/sketchybar/plugins/get_music_info.js)

LABEL=$(echo "$JSON" | /usr/bin/plutil -extract label raw -)
STATE=$(echo "$JSON" | /usr/bin/plutil -extract state raw -)

if [[ "$STATE" == "Playing" ]]; then
  ICON="󰎆"
else
  ICON="󰫔"
fi

if [ -f "$CACHE_FILE" ]; then
  LAST=$(cat "$CACHE_FILE")
  if [ "$LAST" == "$LABEL|$ICON" ]; then
    exit 0
  fi
fi

echo "$LABEL|$ICON" > "$CACHE_FILE"

if [[ "$STATE" == "Playing" && "$LAST" != "$LABEL|$ICON" ]]; then
  sketchybar --set $NAME icon.y_offset=0
  
  sketchybar --animate sin 10 --set $NAME icon.y_offset=6
  sleep 0.1
  sketchybar --animate tanh 10 --set $NAME icon.y_offset=0
fi

sketchybar --set $NAME label="$LABEL" icon="$ICON"

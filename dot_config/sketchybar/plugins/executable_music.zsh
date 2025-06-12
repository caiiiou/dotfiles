#!/usr/bin/env zsh

NAME="music"

LABEL=$(osascript -l JavaScript ~/.config/sketchybar/plugins/get_music_info.js)

if [[ "$LABEL" == "No Music Playing" ]]
then
  ICON="󰫔"
elif [[ $(osascript -l JavaScript ~/.config/sketchybar/plugins/is_playing.js) == 0 ]]
then
  ICON="󰫔"
else
  ICON="󰎆"
fi

sketchybar --set $NAME label="$LABEL" icon="$ICON"


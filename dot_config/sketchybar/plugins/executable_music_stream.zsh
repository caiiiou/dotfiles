#!/usr/bin/env zsh

# Event-driven now-playing updates via media-control
export PATH="/opt/homebrew/bin:$PATH"
media-control stream --no-diff | jq --unbuffered -r '
  select(.type == "data") | .payload
  | if .title then "\(.playing)\t\(.title) — \(.artist // "")" else "none\t" end' |
while IFS=$'\t' read -r PLAYING LABEL; do
  STATE="$PLAYING|$LABEL"
  [[ "$STATE" == "$LAST" ]] && continue
  LAST="$STATE"

  if [[ "$PLAYING" == "true" ]]; then
    ICON="󰎆"
  else
    ICON="󰫔"
  fi
  [[ "$PLAYING" == "none" ]] && LABEL="No Music Playing"

  sketchybar --set music label="$LABEL" icon="$ICON"
done

#!/usr/bin/env zsh

read -r VOLUME MUTED <<<"$(osascript -e 'set v to get volume settings' -e 'return (output volume of v as text) & " " & (output muted of v as text)')"

if [ "$MUTED" != "false" ]; then
	ICON="󰖁"
	VOLUME=0
else
	case ${VOLUME} in
	100) ICON="" ;;
	[5-9]*) ICON="" ;;
	[0-9]*) ICON="" ;;
	*) ICON="" ;;
	esac
fi

sketchybar -m \
	--set "$NAME" icon=$ICON \
	--set "$NAME" label="$VOLUME%"

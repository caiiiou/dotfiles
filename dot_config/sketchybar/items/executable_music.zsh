#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item music q \
	--set music \
	icon.color="$COLOR" \
	icon.padding_left="$ICON_PADDING_LEFT" \
	icon.font.size=16 \
	label.color="$COLOR" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	label.max_chars=40 \
	background.color="$BAR_COLOR" \
	background.padding_right="$PADDINGS" \
	background.height="$BACKGROUND_HEIGHT" \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_color="$COLOR" \
	background.border_width="$BORDER_WIDTH" \
	background.drawing="$BACKGROUND_DRAWING" \
	associated_display=active

# Restart the stream listener on reload
pkill -f "$PLUGIN_DIR/music_stream.zsh"
pkill -f "mediaremote-adapter.pl.*stream"
"$PLUGIN_DIR/music_stream.zsh" >/dev/null 2>&1 &

#!/bin/bash

sketchybar --add event music_tick
sketchybar --add item music q \
	--set music \
	scroll_texts=off \
	icon=󰎆 \
	icon.color="$COLOR" \
	icon.padding_left=10 \
	background.color="$BAR_COLOR" \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR" \
	background.padding_right=-5 \
	background.drawing=on \
	label.padding_right=10 \
	label.max_chars=30 \
	associated_display=active \
	updates=on \
	--set music script="$PLUGIN_DIR/music.sh" \
	--subscribe music music_tick





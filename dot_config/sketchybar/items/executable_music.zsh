#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item music q \
	--set music \
	update_freq=1 \
	icon.color="$COLOR" \
	icon.padding_left="$ICON_PADDING_LEFT" \
	label.color="$COLOR" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	label.max_chars=30 \
	background.color="$BAR_COLOR" \
	background.padding_right="$PADDINGS" \
	background.height="$BACKGROUND_HEIGHT" \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_color="$COLOR" \
	background.border_width="$BORDER_WIDTH" \
	background.drawing="$BACKGROUND_DRAWING" \
	associated_display=active \
	script="$PLUGIN_DIR/music.zsh" 

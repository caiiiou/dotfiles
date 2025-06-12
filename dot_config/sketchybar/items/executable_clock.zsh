#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item clock right \
	--set clock \
	update_freq=1 \
	icon.color="$COLOR" \
	icon.padding_left="$ICON_PADDING_LEFT" \
	icon="" \
	label.color="$COLOR" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	label.width=78 \
	background.color="$BAR_COLOR" \
	background.height="$BACKGROUND_HEIGHT" \
	background.width=100 \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_color="$COLOR" \
	background.border_width="$BORDER_WIDTH" \
	background.drawing="$BACKGROUND_DRAWING" \
	align=center \
	script="$PLUGIN_DIR/clock.zsh"

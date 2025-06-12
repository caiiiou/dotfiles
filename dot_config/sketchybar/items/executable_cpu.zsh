#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item cpu right \
	--set cpu \
	update_freq=1 \
	icon.color="$COLOR" \
	icon.padding_left="$ICON_PADDING_LEFT" \
	label.color="$COLOR" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	background.color="$BAR_COLOR" \
	background.padding_right="$BACKGROUND_PADDING_RIGHT" \
	background.height="$BACKGROUND_HEIGHT" \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_color="$COLOR" \
	background.border_width="$BORDER_WIDTH" \
	background.drawing="$BACKGROUND_DRAWING" \
	script="$PLUGIN_DIR/cpu.zsh"

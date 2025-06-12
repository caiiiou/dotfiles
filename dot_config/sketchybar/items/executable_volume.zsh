#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item sound right \
	--set sound \
	icon.color="$COLOR" \
	icon.padding_left="$ICON_PADDING_LEFT" \
	label.color="$COLOR" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	background.height="$BACKGROUND_HEIGHT" \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right="$BACKGROUND_PADDING_RIGHT" \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR" \
	background.color="$BAR_COLOR" \
	background.drawing="$BACKGROUND_DRAWING" \
	script="$PLUGIN_DIR/sound.zsh" \
	--subscribe sound volume_change

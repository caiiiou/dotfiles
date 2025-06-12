#!/usr/bin/env zsh

COLOR="$LAVENDER"

sketchybar --add item front_app left \
	--set front_app script="$PLUGIN_DIR/front_app.zsh" \
	icon.drawing=off \
	label.color="$COLOR" \
	label.padding_left="$ICON_PADDING_LEFT" \
	label.padding_right="$LABEL_PADDING_RIGHT" \
	background.color="$BAR_COLOR" \
	background.padding_right="$BACKGROUND_PADDING_RIGHT" \
	background.height="$BACKGROUND_HEIGHT" \
	background.border_color="$COLOR" \
	background.corner_radius="$CORNER_RADIUS" \
	background.border_width="$BORDER_WIDTH" \
	background.drawing="$BACKGROUND_DRAWING" \
	associated_display=active \
	--set front_app script="$PLUGIN_DIR/front_app.zsh" \
	--subscribe front_app front_app_switched

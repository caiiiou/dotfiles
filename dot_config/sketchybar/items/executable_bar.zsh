#!/usr/bin/env zsh

sketchybar --bar height=30 \
	color="$BAR_COLOR" \
	shadow="$SHADOW" \
	position=top \
	sticky=on \
	padding_right=0 \
	padding_left=0 \
	corner_radius="$CORNER_RADIUS" \
	y_offset=6 \
	margin=15 \
	blur_radius=40 \
	notch_width=200 \
	--default updates=when_shown \
	icon.font="$FONT:$FONT_THICKNESS:15" \
	icon.color="$ICON_COLOR" \
	icon.padding_left="$PADDINGS" \
	icon.padding_right="$PADDINGS" \
	label.font="$FONT:$FONT_THICKNESS:13.0" \
	label.color="$LABEL_COLOR" \
	label.padding_left="$PADDINGS" \
	label.padding_right="$PADDINGS" \
	background.padding_right="$PADDINGS" \

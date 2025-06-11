#!/usr/bin/env bash
# ~/.config/sketchybar/plugins/aerospace.sh
# Make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

# Try different ways to get the current workspace
CURRENT_WORKSPACE=""

# Method 1: Try aerospace command
if command -v aerospace >/dev/null 2>&1; then
    CURRENT_WORKSPACE=$(aerospace list-workspaces --focused 2>/dev/null)
fi

sketchybar --set aerospace \
    label="$CURRENT_WORKSPACE" \
    label.drawing=on \
    label.color=0xe6b4befe\
    background.drawing=on \
    background.color="$BAR_COLOR" \
    background.border_color=0xe6b4befe

#!/usr/bin/env zsh

# Try different ways to get the current workspace
CURRENT_WORKSPACE=""

# Method 1: Try aerospace command
if command -v aerospace >/dev/null 2>&1; then
    CURRENT_WORKSPACE=$(aerospace list-workspaces --focused 2>/dev/null)
fi

sketchybar --set aerospace \
    label="$CURRENT_WORKSPACE" \
    label.padding_left=20

#!/usr/bin/env zsh

WORKSPACE="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused 2>/dev/null)}"

sketchybar --set aerospace \
    label="$WORKSPACE" \
    label.padding_left=20

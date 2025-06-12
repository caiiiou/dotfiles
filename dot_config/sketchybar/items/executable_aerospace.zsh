#!/usr/bin/env zsh

sketchybar --add item aerospace left \
    --set aerospace \
    update_freq=3 \
    icon.padding_left="$ICON_PADDING_LEFT" \
    label.padding_right=18 \
    background.height="$BACKGROUND_HEIGHT" \
    background.corner_radius="$CORNER_RADIUS" \
    background.padding_right="$BACKGROUND_PADDING_RIGHT" \
    background.border_width="$BORDER_WIDTH" \
    associated_display=active \
    script="$PLUGIN_DIR/aerospace.zsh" \
    --add event aerospace_workspace_change \
    --subscribe aerospace aerospace_workspace_change

### ADD background draw to plugin if want border ###

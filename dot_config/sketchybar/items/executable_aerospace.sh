sketchybar --add item aerospace left \
    --set aerospace \
    icon.padding_left=10 \
    label.padding_right=20 \
    background.height=26 \
    background.corner_radius="$CORNER_RADIUS" \
    background.padding_right=5 \
    background.border_width="$BORDER_WIDTH" \
    background.drawing=on \
    associated_display=active \
    updates=on \
    script="$CONFIG_DIR/plugins/aerospace.sh" \
    update_freq=3

# Add event and subscribe after item is created
sketchybar --add event aerospace_workspace_change
sketchybar --subscribe aerospace aerospace_workspace_change

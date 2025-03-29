#!/bin/sh

# List all wallpapers in dmenu
selected=$(ls ~/suckless/assets/wallpapers | dmenu -c -l 10)

# Set selected as the wallpaper
if [ -n "$selected" ]; then
    feh --bg-scale ~/suckless/assets/wallpapers/"$selected"

    # Create a symbolic link named "current" pointing to the selected wallpaper (for dwmstart.sh to see)
    ln -sf ~/suckless/assets/wallpapers/"$selected" ~/suckless/assets/wallpapers/current
fi


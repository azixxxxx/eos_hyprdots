#!/usr/bin/env fish

# Set the directory containing your wallpapers
set directory /home/azims/Pictures/Wallpapers

# Get the name of your monitor
set monitor "DP-1"

# Choose a random wallpaper from the directory
set random_background (find $directory -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)

# Unload all currently loaded wallpapers
hyprctl hyprpaper unload all

# Preload the new wallpaper
hyprctl hyprpaper preload $random_background

# Apply the wallpaper to your monitor
hyprctl hyprpaper wallpaper "$monitor,$random_background"

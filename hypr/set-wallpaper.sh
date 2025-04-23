#!/bin/env zsh

#hyprctl hyprpaper unload all

wallpapers="$HOME/Downloads/wallpapers/"
current=$(hyprctl hyprpaper listloaded)

wallpaper=$(find "$wallpapers" -type f ! -name "$(basename "$current")" | shuf -n 1)

hyprctl hyprpaper reload ,"$wallpaper"

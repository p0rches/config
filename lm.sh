#!/bin/sh
LIGHTTHEME="gruvbox-light"
DARKTHEME="gruvbox-dark"

MODE=$(grep 'gruvbox-light' ~/.config/alacritty/alacritty.toml)

if [[ $MODE ]]; then
    sed -i "s/${LIGHTTHEME}/${DARKTHEME}/" ~/.config/alacritty/alacritty.toml
else
    sed -i "s/${DARKTHEME}/${LIGHTTHEME}/" ~/.config/alacritty/alacritty.toml
fi

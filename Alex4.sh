#!/bin/bash

# Install alex4 if not installed.
type alex4 >/dev/null 2>&1 || {
    printf "alex4 not installed. Installing...\n"
    sudo apt-get -y install alex4
}

# Create alex4.ini with correct fullscreen settings
if [[ ! -f ~/.alex4/alex4.ini ]]; then
    # Need to create ~/.alex4/alex4.ini and add graphics settings for GameShell
    mkdir -p ~/.alex4
    printf "[graphics]\nfullscreen = 1\nf_width = 320\nf_height = 240\n" > ~/.alex4/alex4.ini
fi
# NOTE: If you for some reason already have an alex4.ini and it does not have the correct settings, manually put them
# [graphics]
# fullscreen = 1
# f_width = 320
# f_height = 240

# Save current xmodmap keymappings
xmodmap -pke > pre.keymap

# Remap A and B keys
xmodmap -e "keycode 44 = Control_L"
xmodmap -e "keycode 45 = Alt_L"

# Run Game
alex4

# Restore xmodmap keymappings.
# NOTE: Reboot if keymappings fail to restore due to crash, etc.
xmodmap pre.keymap
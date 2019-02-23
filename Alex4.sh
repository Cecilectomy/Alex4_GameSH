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
# TODO: Check settings automatically and update if necessary

# Remap A and B keys
xmodmap -e "keysym j = Control_L"
xmodmap -e "keysym k = Alt_L"

# Run Game
alex4

# Restore xmodmap keymappings.
# NOTE: Reboot or run this command manually if keymappings fail to restore due to crash, etc.
setxkbmap
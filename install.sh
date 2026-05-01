#!/bin/bash

# Check if span is already installed
if ! command -v span &> /dev/null
then
    # Check if espanso is installed
    if ! command -v espanso &> /dev/null
    then
        echo "Espanso is not installed."
        echo "Please install Espanso first by following the instructions at https://espanso.org/docs/install/linux/"
        exit 1
    else
        # Install span
        echo "Installing Espanso Shortcode Manager..."
        sudo curl -fsSLo /usr/local/bin/span https://raw.githubusercontent.com/pptoolbox/span/main/span
        sudo chmod +x /usr/local/bin/span
        curl -fsSlo /home/$USER/.config/espanso/match/emoji.yml https://raw.githubusercontent.com/pptoolbox/span/main/emoji.yml
        echo "Espanso Shortcode Manager installed successfully."
        exit 0
    fi
else
    echo "Espanso Shortcode Manager is already installed."
    exit 0
fi
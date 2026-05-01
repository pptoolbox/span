#!/bin/bash

# Uninstall span
echo "Uninstalling span..."
sudo rm -f /usr/local/bin/span
rm /home/$USER/.config/espanso/match/span.yml
rm /home/$USER/.config/espanso/match/emoji.yml
echo "span uninstalled successfully."
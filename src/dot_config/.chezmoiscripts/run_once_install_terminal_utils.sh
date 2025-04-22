#!/bin/bash

# This will run once when chezmoi is applied
# Ensure bat and lsd are installed

if ! command -v bat &> /dev/null; then
    echo "bat is not installed. Installing..."
    # Install bat on Arch Linux
    if command -v pacman &> /dev/null; then
        sudo pacman -S --noconfirm bat
    else
        echo "Pacman not found. This script is designed for Arch Linux."
        exit 1
    fi
else
    echo "bat is already installed."
fi

if ! command -v lsd &> /dev/null; then
    echo "lsd is not installed. Installing..."
    # Install lsd on Arch Linux
    if command -v pacman &> /dev/null; then
        sudo pacman -S --noconfirm lsd
    else
        echo "Pacman not found. This script is designed for Arch Linux."
        exit 1
    fi
else
    echo "lsd is already installed."
fi

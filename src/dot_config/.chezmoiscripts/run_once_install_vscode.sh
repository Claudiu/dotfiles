#!/bin/bash

# This will run once when chezmoi is applied

# Ensure VS Code is installed
if ! command -v code &> /dev/null; then
    echo "VS Code is not installed. Installing..."

    # Install VS Code on Arch Linux
    if command -v pacman &> /dev/null; then
        # Check if yay is installed for AUR access
        if command -v yay &> /dev/null; then
            echo "Installing VS Code using yay..."
            yay -S --noconfirm visual-studio-code-bin
        # Check if paru is installed for AUR access
        elif command -v paru &> /dev/null; then
            echo "Installing VS Code using paru..."
            paru -S --noconfirm visual-studio-code-bin
        else
            echo "AUR helper not found. Please install VS Code manually or install yay/paru."
            echo "You can install yay with:"
            echo "pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si"
            exit 1
        fi
    else
        echo "Pacman not found. This script is designed for Arch Linux."
        exit 1
    fi
else
    echo "VS Code is already installed."
fi

# Install extensions from the extensions.json file
EXTENSIONS_FILE="$HOME/.config/Code/User/extensions.json"
if [ -f "$EXTENSIONS_FILE" ]; then
    echo "Installing recommended extensions..."

    # Extract extension IDs from the recommendations array
    EXTENSIONS=$(grep -o '"[^"]*"' "$EXTENSIONS_FILE" | grep -v "recommendations" | tr -d '"')

    # Install each extension
    for ext in $EXTENSIONS; do
        echo "Installing extension: $ext"
        code --install-extension "$ext" --force
    done
fi

echo "VS Code setup complete!"

# Install extensions from the extensions.json file
EXTENSIONS_FILE="$HOME/.config/Code/User/extensions.json"
if [ -f "$EXTENSIONS_FILE" ]; then
    echo "Installing recommended extensions..."

    # Extract extension IDs from the recommendations array
    EXTENSIONS=$(grep -o '"[^"]*"' "$EXTENSIONS_FILE" | grep -v "recommendations" | tr -d '"')

    # Install each extension
    for ext in $EXTENSIONS; do
        echo "Installing extension: $ext"
        code --install-extension "$ext" --force
    done
fi

echo "VS Code setup complete!"

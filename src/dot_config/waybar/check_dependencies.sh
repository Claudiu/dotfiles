#!/bin/bash

# Make the script executable
chmod +x "$0"

# Function to check if a command is available
check_command() {
    if ! command -v "$1" &> /dev/null; then
        echo "❌ $1 is not installed. Please install it using your package manager."
        echo "   For example: sudo pacman -S $1 (Arch) or sudo apt install $1 (Debian/Ubuntu)"
        return 1
    else
        echo "✅ $1 is installed."
        return 0
    fi
}

# Check for required dependencies
echo "Checking waybar dependencies..."
echo "-------------------------------"

# Check for waybar
check_command "waybar"

# Check for playerctl (required for media controls)
check_command "playerctl"

# Check for wlogout (required for power menu)
check_command "wlogout"

# Check for pavucontrol (required for audio control)
check_command "pavucontrol"

echo "-------------------------------"
echo "If any dependencies are missing, please install them before using the updated waybar configuration."
echo "After installing missing dependencies, restart Hyprland to apply the changes."

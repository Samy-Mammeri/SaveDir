#!/bin/bash

# Define the directory where the scripts will be downloaded to
TARGET_DIR="/usr/local/bin"

# Make the scripts executable
echo "Making scripts executable"
chmod +x "$TARGET_DIR/save_current_dir.sh"
chmod +x "$TARGET_DIR/load_last_dir.sh"

# Optional: Add aliases to the user's shell configuration file for easier usage
echo "Do you want to add aliases for these scripts to your shell configuration file? [Y/n]"
read USER_RESPONSE
if [ "$USER_RESPONSE" == "Y" ] || [ "$USER_RESPONSE" == "y" ] || [ "$USER_RESPONSE" == "Yes" ]; then
    echo "alias savecd='source $TARGET_DIR/save_current_dir.sh'" >> ~/.bashrc
    echo "alias loadcd='source $TARGET_DIR/load_last_dir.sh'" >> ~/.bashrc
    echo "Please restart your shell or source your configuration file to use the aliases"
fi

echo "Setup completed."

#!/bin/bash

# File where the last directory was saved
SAVE_FILE="$HOME/.last_dir"

# Check if the save file exists and is not empty
if [ -s "$SAVE_FILE" ]; then
    # Read the saved directory
    LAST_DIR=$(cat "$SAVE_FILE")

    # Ask if change is wanted
    echo "Do you want to cd to your last saved location? [Y/n]"
    read REP
    if [ "$REP" == "Y" ] || [ "$REP" == "y" ] || [ "$REP" == "Yes" ]; then
        # Change to the directory
        cd "$LAST_DIR" || exit
        echo "Changed to directory: $LAST_DIR"
    fi
else
    echo "No saved directory found."
fi

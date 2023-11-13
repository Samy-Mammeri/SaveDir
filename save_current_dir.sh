#!/bin/bash

# File where the current directory will be saved
SAVE_FILE="$HOME/.last_dir"

# Check if the File that saves the last directory exists
if [ ! -e "$SAVE_FILE" ]; then
    # Create the file if it doesn't exist
    touch "$SAVE_FILE"
fi

 # Save the current directory
pwd > "$SAVE_FILE"

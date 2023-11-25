#!/bin/bash

# File where the last directory was saved
SAVE_FILE="$HOME/.last_dir"

# Read the saved directory and change to it if possible
LAST_DIR=$(cat "$SAVE_FILE" 2>/dev/null) && cd "$LAST_DIR" || echo "No saved directory found or unable to change directory."


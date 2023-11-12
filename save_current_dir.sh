#!/bin/bash

# File where the current directory will be saved
SAVE_FILE="$HOME/.last_dir"

# Save the current directory
pwd > "$SAVE_FILE"

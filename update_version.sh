#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo 'Version: [0-9]+\.[0-9]+\.[0-9]+' readme.md | tail -n 1 | awk '{print $2}')

# Increment the last digit of the version by 1
new_version=$(echo $current_version | awk -F. '{print $1"."$2"."$3+1}')

# Get the commit hash
commit_hash=$(git rev-parse --short HEAD)

# Prompt the user for the commit message
read -p "Enter the commit message: " commit_message

# Create a new line with the incremented version, commit hash, and user-provided commit message
new_line="| Version: $new_version (Commit: $commit_hash - $commit_message) |"

# Add a new line with the incremented version, commit hash, and user-provided commit message at the end of the file
echo "$new_line" >> readme.md

echo "Version updated to $new_version with Commit: $commit_hash - $commit_message"

#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo '[0-9]+\.[0-9]+\.[0-9]+' readme.md | tail -n 1 | awk '{print $2}')

# Increment the last digit of the version by 1
new_version=$(echo $current_version | awk -F. '{print $1"."$2"."$3+1}')

# Get the commit hash
commit_hash=$(git rev-parse --short HEAD)

# Create a new line with the incremented version and commit hash
new_line="| $new_version | $commit_hash |"

# Add a new line with the incremented version and commit hash at the end of the file
echo "$new_line" >> readme.md

echo "Version updated to $new_version with Commit: $commit_hash"

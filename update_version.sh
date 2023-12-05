#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo 'Version: [0-9]+\.[0-9]+\.[0-9]+' readme.md | tail -n 1 | awk '{print $2}')

# Increment the last digit of the version by 1
new_version=$(echo $current_version | awk -F. '{print $1"."$2"."$3+1}')

# Get the commit hash
commit_hash=$(git rev-parse --short HEAD)

# Get the index number
index_number=$(awk '/^Version: [0-9]+\.[0-9]+\.[0-9]+/{print $1}' readme.md | wc -l)

# Increment the index number by 1
index_number=$((index_number + 2))

# Create a new line with the index number, incremented version, and commit hash
new_line="$index_number. Version: $new_version (Commit: $commit_hash)"

# Add a new line with the index number, incremented version, and commit hash at the end of the file
echo "$new_line" >> readme.md

echo "Version updated to $new_version with Commit: $commit_hash at index $index_number"

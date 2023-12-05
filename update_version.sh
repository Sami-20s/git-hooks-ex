#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo 'v [0-9]+\.[0-9]+\.[0-9]+' readme.md | awk '{print $2}')

# Increment the last digit of the version by 1
new_version=$(echo $current_version | awk -F. '{print $1"."$2"."$3+1}')

# Get the commit hash of the latest commit
commit_hash=$(git rev-parse --short HEAD)

# Get the commit message
commit_message=$(git log -1 --pretty=%B)

remote_url=$(git config --get remote.origin.url)

# Create a new line with the incremented version and commit hash
new_line="| v $new_version | $commit_hash | $commit_message | $remote_url"

# Add a new line with the incremented version and commit hash at the end of the file
echo "$new_line" >> readme.md

echo "Version updated to $new_version with Commit: $commit_hash"

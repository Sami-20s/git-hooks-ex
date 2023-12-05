#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo 'Version: [0-9]+' readme.md | awk '{print $2}')

# Increment the version by 1
new_version=$((current_version + 1))

# Update the readme.md file with the new version
sed -i "s/Version: $current_version/Version: $new_version/" readme.md

echo "Version updated to $new_version"

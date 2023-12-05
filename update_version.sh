#!/bin/bash

# Read the current version from the readme.md file
current_version=$(grep -Eo 'Version: [0-9]+\.[0-9]+\.[0-9]+' readme.md | awk '{print $2}')

# Increment the last digit of the version by 1
new_version=$(echo $current_version | awk -F. '{print $1"."$2"."$3+1}')

# Add a new line with the incremented version below the existing version
sed -i "/Version: $current_version/a Version: $new_version" readme.md

echo "Version updated to $new_version"

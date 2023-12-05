#!/bin/bash

# Assuming your version is stored in a file named "version.txt"
version=$(cat version.txt)

# Update the version in README.md
sed -i "s/Version: [0-9]\+\.[0-9]\+\.[0-9]\+/Version: $version/" README.md
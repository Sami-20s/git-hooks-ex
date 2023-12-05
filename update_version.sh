#!/bin/bash

# Assuming your version is stored in a file named "version.txt"
version=$(cat version.txt)
# readMe=$(cat README.md)
# echo $readMe
# Update the version in README.md
sed "s/Version: [0-9]\+\.[0-9]\+\.[0-9]\+/Version: $version/" README.md > README_tmp.md && mv README_tmp.md README.md
readMe=$(cat README.md)
echo $readMe

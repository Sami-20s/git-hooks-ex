#!/bin/bash

# Assuming your version is stored in a file named "version.txt"
version=$(cat version.txt)
# readMe=$(cat README.md)
# echo $readMe
# Update the version in README.md
echo "Version:1.2.3" > README.md
readMe=$(cat README.md)
echo $readMe

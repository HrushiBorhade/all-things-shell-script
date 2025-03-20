#!/bin/bash

# Set IFS to empty to preserve spaces in the folder names
IFS=

# File containing folder names
file="random.txt"

# Iterate through each line in the file
while read -r line || [ -n "$line" ]; do
  # Create the folder from the line content
  mkdir -p "$line"
  echo "Folder '$line' created."
done < "$file"

#!/bin/bash
set -euo pipefail

# WEBIMGR
# RESPONSIVE IMAGE GENERATOR
#----------------------------
# Creates .avif and webp versions of all  png & jpg images located in a directory.
# The original file can serve as a backup for older browsers.

# INSTALL:
# Install Image Magick6 to get the convert command.
# Drop script into any directory on $PATH (e.g., ~/bin).

# USE:
# webimgr <directory>
# Output: img.webp, img.avif

if [ "$#" -ne 1]; then
	echo "Usage: $0 <directory-path>"
	exit 1
fi

directory = $1

if [! -d "$directory"]; then
	echo "Directory does not exist: $directory"
	exit 1
fi

# Init flag to check for image files
found_files=false

# Loop through all image files in the directory
# Assuming image files have extensions like jpg, png, gif, etc.
# Modify the pattern as needed to match the image file types you're working with

for file in "$directory"/*.{jpg,jpeg}; do
	if [ -e "file" ]; then # check if the glob gets expanded to existing files.
		
		# Perform your image conversion operation here
		echo "Processing $file"
		convert "$file" "${file%.*}.avif"
		convert "$file" "${file%.*}.webp" 
	fi
done

# Check if no image files were found
if [ "$found_files" = false ]; then
	echo "No image files found in $directory"
fi






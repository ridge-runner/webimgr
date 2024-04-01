
# WEBIMGR
RESPONSIVE IMAGE GENERATOR
----------------------------
Creates .avif and webp versions of all jpg & jpeg images located in a directory.

The original file can serve as a backup for older browsers.

## INSTALL:
Install Image Magick6 to get the convert command.
Drop script into any directory on `$PATH` (e.g., `~/bin`).

## USE:
`webimgr < /path/to/directory/ >` 
The directory path needs to be the complete path. 
Use `pwd` to get the current working directory.

*Output:* img.webp, img.avif

*Original* *.jpg and *.jpeg files will remain unchanged.

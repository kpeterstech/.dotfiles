#!/usr/bin/env bash

# Correct file extensions
~/bin/ffile_extension_corrector.sh

# Remove duplicates (fdupes is required. sudo apt install fdupes)
# -N = no prompt
# -d = save the first file, delete all other copies

fdupes -Nd .

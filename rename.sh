#!/bin/bash
# Renames all PDF/JPG files in the recipe directory to sequential numbers
cd recipe
counter=1
for file in *.{pdf,jpg}; do
    ext="${file##*.}"
    mv "$file" "$counter.$ext"
    ((counter++))
done
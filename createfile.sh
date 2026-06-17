#! /usr/bin/bash

echo "Enter file name"
read -r file

if [ -f "$file" ]; then
    echo "Enter text to append to file:"
    read -r text
    echo "$text" >> "$file"
    echo "....................."
    echo "Contents of the file after appending:"
    # cat "$file"
    while IFS= read -r line; do
        echo "$line"
    done < "$file"
else
    touch "$file"
    echo "file created"
    echo "Enter text to write to file:"
    read -r text
    echo "$text" > "$file"
fi

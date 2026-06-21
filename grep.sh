#! /usr/bin/bash

echo "Enter a file name to search for:"
read file_name

if [ -f "$file_name" ]; then
    echo "File '$file_name' found."
    echo "Enter a pattern to search for:"
    read pattern
    grep -i -n "$pattern" "$file_name" # -i for case-insensitive search, -n to show line numbers, -c to show count of matches
else
    echo "File '$file_name' not found."
fi
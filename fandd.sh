#! /usr/bin/bash

echo "Enter directory name"
read -r dir

if [ -d "$dir" ]; then
    echo "directory already exit"
else
    mkdir -p "$dir"
fi

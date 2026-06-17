#! /usr/bin/bash

echo "Enter directory name"
read -r dir

if [ -d "$dir" ]; then
    echo "directory already exists"
else
    mkdir -p "$dir"
    echo "directory created"
fi

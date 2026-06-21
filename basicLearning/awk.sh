#! /usr/bin/bash

url=1-mb-pdf

if [ ! -f "$url" ]; then
    echo "File $url does not exist."
else
    awk '/head/ {print $0}' "$url"
fi
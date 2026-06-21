#! /usr/bin/bash

url=1-mb-pdf.pdf

if [ ! -f "$url" ]; then
    echo "File $url does not exist."
else
    awk '{print $1}' "$url"
fi
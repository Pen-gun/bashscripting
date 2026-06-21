#! /usr/bin/bash

url=notout
if [ ! -f "$url" ]; then
    echo "File $url does not exist."
else
    sed  's/i/II/g' "$url"
fi
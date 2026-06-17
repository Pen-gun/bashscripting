#! /usr/bin/bash

if ping -c 1 google.com; then
    echo "Internet connection is available."
else
    echo "No internet connection."
fi
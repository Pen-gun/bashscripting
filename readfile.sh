#! /usr/bin/bash
number=0
while read line
do
    ((number++))
    echo "Line $number: $line"
done < "${1:-/dev/stdin}"
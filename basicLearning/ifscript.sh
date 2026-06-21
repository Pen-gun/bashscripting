#! /usr/bin/bash

count=9

if [[ $count -gt 1 && $count -lt 15 ]]; then # -eq is used for numeric comparison
    echo "Count is between 1 and 15"
elif [[ $count -gt 15 && $count -lt 20 ]]; then # -gt is used for "greater than" comparison, can also use (( count > 10 )) for arithmetic evaluation
    echo "Count is greater than 15 but less than 20"
else
    echo "Count is not in the specified range"
fi
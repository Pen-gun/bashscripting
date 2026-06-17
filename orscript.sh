#! /usr/bin/bash

cont=10

if [[ $cont -eq 10 || $cont -lt 5 ]]; then # -eq is used for numeric comparison, || is the logical OR operator
    echo "Cont is either 10 or less than 5"
else
    echo "Cont is not 10 and not less than 5"
fi
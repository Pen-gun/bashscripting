#! /usr/bin/bash

cars=("BMW" "Audi" "Mercedes" "Tesla")

unset cars[2] # Unsetting element at index 2
cars[2]="Porsche" # Adding new element at index 2

echo "${cars[@]}"
echo "${cars[0]}" # Accessing first element
echo "${!cars[@]}"
echo "${#cars[@]}" # Length of array
echo "${#cars[0]}" # Length of first element
echo "${cars[@]:1:2}" # Slicing array from index 1 to 2
echo "${cars[@]/e/E}" # Replacing 'e' with 'E' in all elements
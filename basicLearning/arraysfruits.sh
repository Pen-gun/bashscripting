#! /usr/bin/bash

# Define an array of fruits
fruits=("Apple" "Banana" "Cherry" "Date" "Elderberry")
# Print the entire array
echo "Fruits: ${fruits[@]}"
# Print the number of fruits
echo "Number of fruits: ${#fruits[@]}"
# Print the first fruit
echo "First fruit: ${fruits[0]}"
# Print the last fruit
echo "Last fruit: ${fruits[-1]}"
# Add a new fruit to the array
fruits+=("Fig")
# Print the updated array
echo "Updated fruits: ${fruits[@]}"
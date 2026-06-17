#! /usr/bin/bash

echo "Addition: "$(expr 5 + 3 ) # Addition
echo "Subtraction: "$(( 5 - 3 )) # Subtraction
echo "Multiplication: "$(( 5 * 3 )) # Multiplication
echo "Division: "$(( 5 / 3 )) # Division
echo "Modulo: "$(( 5 % 3 )) # Modulo
echo "Exponentiation: "$(( 5 ** 3 )) # Exponentiation

echo "-------------------"
echo "Using variables: "
a=5
b=3
echo "Addition: "$(( a + b )) # Addition
echo "Subtraction: "$(( a - b )) # Subtraction
echo "Multiplication: "$(( a * b )) # Multiplication
echo "Division: "$(( a / b )) # Division
echo "Modulo: "$(( a % b )) # Modulo
echo "Exponentiation: "$(( a ** b )) # Exponentiation

echo "-------------------"
echo "Using variables with read: "
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
echo "Addition with expr: "$(expr $num1 + $num2 ) # Addition with expr
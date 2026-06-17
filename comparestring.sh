#! /usr/bin/bash

echo "First string:"
read st1

echo "Second string:"
read st2

if [ "$st1" == "$st2" ]
then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi

echo "-------------------"
if [ "$st1" \< "$st2" ]
then
    echo "First string is less than second string"
elif [ "$st1" \> "$st2" ]
then
    echo "First string is greater than second string"
else
    echo "Strings are equal"
fi

echo "-------------------"

echo $st1$st2 # Concatenation of two strings
echo ${st1^l}${st2^o} # {,and ^ can be used for first characters}
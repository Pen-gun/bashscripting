#! /usr/bin/bash

echo "Hexa:"
read num

# echo "Decimal: "$(( 16#$num ))
echo "ibase=16; $num" | bc
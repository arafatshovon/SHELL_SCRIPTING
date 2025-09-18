#!/bin/bash

#thi is a file for base conversion

echo -e "\e[1;33m Your number of base 10: \e[0m"
read num10
echo "Your number is: $num10"

num2=$(echo "obase=2; $num10" | bc)

echo -e "\e[1;33m Your number of base 2: \e[0m $num2"
echo "Power or Exponent using 'bc' operator:"
read -p "Enter your base number:" number
read -p "Enter the power you want to raise to:" power
result=$(echo "$number^$power" | bc)
echo $result

echo "Square root:"
square_root=$(echo "sqrt($number)" | bc)
echo $square_root


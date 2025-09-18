#!/bin/bash

echo -e "\e[1;32m Varibales: \e[0m"
new_var="This is a variable"
echo $new_var
echo '$new_var' #this will print the variable name not the value
echo "$new_var" 

fruit="Apple"
count=5
echo "I have $count $fruit"

#variable length
variable="Yasir Arafat"
length=${#variable}
echo "Length of variable is: $length"

if [ $UID -ne 0 ]; then
    echo "Not root user"
else
    echo "Root User"
fi
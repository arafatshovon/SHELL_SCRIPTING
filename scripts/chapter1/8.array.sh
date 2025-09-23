#!/bin/bash

echo -e "\e[1;33m This file shows array use in bash.\e[0m"
my_array=(1 2 3 4 5 6 7 8 9 10)
echo -e  "\e[1;33m Array contents:\e[0m"
echo ${my_array[*]}

echo "Accessing a single content:"
echo ${my_array[5]}

echo -e "\e[1;34m Associative Array :\e[0m"
arr[0]="value 0"
arr[1]="value 1"
arr[2]="value 2"
arr[3]="value 3"

echo "All the contents of the array : "
echo ${arr[*]}

echo "Other ways of declaring assciative array: declare -A array_name"
echo "Assign contents : array_name=([index1=value1 [index2]=value2 [index3]=value3)"
declare -A new_arr
new_arr=([apple]=100 [orange]=120 [guava]=30 [mango]=50)
echo "All content of associative array"
echo ${new_arr[*]}

echo "List all the array indexes os associative array"
echo ${!new_arr[*]}



#!/bin/bash


echo -e "\e[1;33m This File is for practicing Loops In shell scripting \e[0m"

echo -e "\e[1;32m For Loop. \e[0m"
items=(1 2 3 4 5 6 7 8 9 10)

for item in ${items[@]};
do
	echo "Item using python style for loops: $item";
done

for((i=0;i<${#items[@]};i++));
do 
	echo -e "\e[1;31m Item using c++ style for loops: ${items[$i]}\e[0m";
done

echo -e "\e[1;33m While Loop \e[0m"
read -p "Enter a number: " number
while [ $number -lt 10 ];
do 
	echo "Count : $number";
	let number++;
done

echo -e "\e[1;32m Special Loop: Until Loop \e[0m"
x=0;
until [ $x -eq 20 ];
do
	echo "Using Until Loop : $x";
	let x++;
done


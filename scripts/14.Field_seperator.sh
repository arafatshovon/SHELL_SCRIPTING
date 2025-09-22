#!/bin/bash

echo "Content ofthe output.txt file"
data=$(cat output.txt)
echo "$data"

echo -e "\e[1;32m Set the IFS to new Delimeter and store the previious delimeter.\e[0m"
oldIFS=$IFS

IFS=":"
for item in $data:
	do
		echo $item
	done

echo -e "\e[1;32m Set The IFS back to its current State.\e[0m"
IFS=$oldIFS


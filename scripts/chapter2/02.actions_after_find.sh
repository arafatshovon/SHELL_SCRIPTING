#!/bin/bash


echo "Creating some file for testing"
touch sample1.txt sample2.txt sample3.txt
echo "Content of sample1.txt" > sample1.txt
echo "Content of sample2.txt" > sample2.txt
echo "Content of sample3.txt" > sample3.txt
echo -e "This File shows how to use other commands after \e[1;34m find \e[0m command"
echo -e "\e[1;32m We can use delete command after find \e[0m"
echo -e "command \e[1;32m find . -name '*.txt' -exec command {} \\; \e[0m"
find . -type f -name "*.txt" ! -name "output.txt" -exec cat {} \;> output.txt
if [[ $? -eq 0 ]];then
	echo -e "\e[1;32m Command executed successfully\e[0m"
	cat output.txt
else
	echo -e "\e[1;32m Not executed successfully \e[0m"
fi

echo -e "\e[1;32m Deleting the test files"
find . -maxdepth 1 -name "*.txt" -exec rm {} \;

if [[ $? -eq 0 ]];then
        echo -e "\e[1;32m Deleted dummy Files successfully.\e[0m"
else
        echo -e "\e[1;32m Could not delete dummy data.\e[0m"
fi




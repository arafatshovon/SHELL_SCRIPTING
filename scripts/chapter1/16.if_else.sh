#!/bin/bash

echo -e "\e[1;32m This file is for practicing cinditions .e.g if else and logical operators"
read -p "Enter name : " name1
read -p "Enter dummy marks: " marks1
read -p "Enter another name: " name2
read -p "Enter dummy marks: " marks2

echo "Using if else for finding greater number:"
if [ $marks1 -gt $marks2 ];then echo "$marks1 is greater than $marks2"
elif [ $marks1 -eq $marks2 ];then echo "$marks1 and $marks2 are equal"
else echo "$marks1 is smaller than $marks2"
fi


echo "Conditions related to File checking."
echo "current working directory: $(pwd). Now we will check if thre current working directory is a filename, executable, directory, existing, symlink !!!!"
if [ -f $(pwd) ];then echo "A file"
else echo "Not a file"
fi

if [ -d $(pwd) ];then echo "A directory"
else echo "Not A directory"
fi

if [ -e $(pwd) ];then echo "Path Exists"
else echo "Does not exists"
fi

if [ -x $(pwd) ];then echo "Executable"
else echo "Not Executable"
fi

if [ -L $(pwd) ];then echo "a Symlink"
else echo "Not a Symlink"
fi

echo -e "\e[1;32m String Comparison: \e[0m"
read -p "First String : " string1
read -p "Second String : " string2
if [[ $string1 == $string2 ]];then echo -e "\e[1;32m Strings are equal\e[0m"
else echo -e "\e[1;31m Not Equal \e[0m"
fi

if [[ -z $string1 ]];then echo "Not empty string"
else echo "Empty String"
fi



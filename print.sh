#!/bin/bash

#this line prints Hello World to the terminal
echo "Hello World with doucle quotes!!!"

#you can also use without quotes
echo Hello World without quotes!!!

#You can use single quotes
echo 'Hello World with single quotes!!!'

#another way of printing lines in shell is printf
printf "Hello World with printf function!!!"
printf "\nThis is new Line\n" #you have to use \n for new line with printf

#you can use formatted strings with printf
printf "%-5s %-10s %-4s\n" Name City Age
printf "%-5s %-10s %-4.2f\n" Yasir_Arafat Farmgate 25.9345
printf "%-5s %-10s %-4.2f\n" Yasir_Arafat Farmgate 24.5678
printf "%-5s %-10s %-3d\n" Yasir_Arafat Farmgate 1897

#%s, %c, %d, %f are format specifiers

#To print a colored text you can use escape characters like \e[0:31m for red color]
echo -e "\e[1;31m This is red colored text \e[0m"
echo -e "\e[1;32m This is green colored text \e[0m"
echo -e "\e[1;33m This is yellow colored text \e[0m"
echo -e "\e[1;34m This is blue colored text \e[0m"


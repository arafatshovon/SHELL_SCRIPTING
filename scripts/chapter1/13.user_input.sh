#!/bin/bash

echo -e "\e[1;34m This File is for learning how to take user input using read command with different flags \e[0m"
echo -e "The command is \e[1;34m read -p 'Your string to Show at console' variable_name \e[0m"

read -p "Enter your name:" name
echo -e "Your name is \e[1;33m $name \e[0m"

echo -e "You can also read certain number of characters from the user command line. The command is \e[1;34m read -n number_of_characters variable_name \e[0m"
echo "Enter your name:"
read -n 5 fname
echo ""
echo "In The previous Line you can enter only 5 characters. After that it automatically stops taking characters. Your entered characters are :"
echo $fname

echo -e "You can also read secret inputs like passwords from the user. command \e[1;34m read -s variable_name \e[0m"
read -s password
echo "Your Typed Input: $password"

echo -e "Using Delimeter Character for ending user input. command \e[1;31m read -d 'delimeter_character' variable_name \e[0m"
echo "Your Input:(Example: Arafat:) Here type : after your input."
read -d ':' lname
echo "Input : $lname"


#!/bin/bash

echo "This file is for practicing chaning commands .i.e. using one commands output as input of another commands."
echo -e "There are many way of doing this. Most common way is using the pipe operator \e[1;34m cmd1 | cmd2 | cmd3  \e[0m"

echo -e "\e[1;34m Example \e[0m"
output="$(ls -la | cat -n)"
echo -e "\e[1;34m If you use no quotes around the variable name then it will print value in a single line. Example :\e[0m "
echo $output
echo -e "\e[1;34m Use double quote then it will be printed with new liines. Example:\e[0m"
echo "$output"


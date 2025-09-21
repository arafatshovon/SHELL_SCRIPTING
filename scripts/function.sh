#!/bin/bash
echo "This file is for testing function in shell script"
echo -e "\e[1;34m defining a Function \e[0m"

red_line()
{
	echo -e "\e[1;31m $1 \e[0m"
}

green_line()
{
	echo -e "\e[1;32m $1 \e[0m"
}

yellow_line()
{
	echo -e "\e[1;33m $1 \e[0m"
}

blue_line()
{
	echo -e "\e[1;34m $1 \e[0m"
}

function test_function()
{
	red_line "This is a hello world Statement inside a function."
	red_line "This following lines are using the passed arguments"
	green_line "First Argument : $1"
	green_line "Second Argument : $2"
	green_line "Third Argument : $3"
	
	all_vars=$@
	for i in all_var;
	do
		yellow_line $i
	done
	blue_line "Now we are reading all the arguments but one by one $*"

}

test_function uvicorn fastapi python;


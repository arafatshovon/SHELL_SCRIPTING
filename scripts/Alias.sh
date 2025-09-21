#!/bin/bash

echo -e  "\e[1;34m This file shows use alias command. Setting Alias for other commands and then unsetting them.\e[0m"
echo -e "Command for setting alias is \e[1;34m alias new_command='actual_command'\e[0m"

alias say='echo'

if  ! say "Hello world!!!! This Line is printed using a alias command for echo. The alias is say." 2>\dev\null ; then
	echo -e "\e[1;31m The Command setup not successful.\e[0m  Use \e[1;34m source yourfilename.sh \e[0m"
else
	echo -e "\e[1;33m The command setup was successful \e[0m"
	unalias say
fi


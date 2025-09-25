#!/bin/bash

for line in "$@";
do 
	echo -e "\e[1;34m $line \e[0m"
done


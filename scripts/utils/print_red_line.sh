#!/bin/bash

for line in "$@";
do 
	echo -e "\e[1;31m $line \e[0m"
done


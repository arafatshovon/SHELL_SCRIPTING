#!/bin/bash

lines=$@

for line in ${lines[@]};
do 
	echo -e "\e[1;31m $line \e[0m"
done


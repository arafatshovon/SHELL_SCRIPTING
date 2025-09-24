#!/bin/bash

lines=$@
for line in ${liines[@]};
do 
	echo -e "\e[1;33m $line \e[0m"
done


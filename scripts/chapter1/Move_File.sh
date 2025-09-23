#!/bin/bash

echo "Read The Files of the current directory"
file_names=$(ls)

echo "Current File Directory : $(pwd)"

for file in ${file_names[@]};
do 
	echo "File Name : $file";
	if [[ -d $file ]];then
	       	echo -e "\e[1;33m This is a Directory. Skipping.\e[0m"
	else
		source="$(pwd)/$file"
		if [[ -f $source ]] && [[ -e $source ]];then
			destination="$(pwd)/chapter1/$file"
			mv $source $destination
			if [[ $? -eq 0 ]]; then echo -e "\e[1;32m File Moved Successfully... \e[0m"
			else echo -e "\e[1;31m File Transportation Failed !!!! \e[0m"
			fi
		else
			echo -e "\e[1;31m File Does not exists or not a valid file name ! \e[0m"
		fi
	fi
done


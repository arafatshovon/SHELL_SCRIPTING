#!/bin/bash
echo "Creating Some dummy File for practice .... "
touch my_script.sh sample1.txt sample2.txt
echo -e "This File is for Practicing \e[1;34m find \e[0m Command"
echo -e "The command Syntax is \e[1;31m find directory_from_where_to_search -flags file_name \e[0m"

echo "Example: Printing Files in the current Directory"
find . -print

echo -e "\nSearching Files Based on regex Pattern. Command \e[1;32m find directory -iname 'your_pattern_for_file' -print \e[0m"
find "$(pwd)" -iname "*.sh" -print

echo -e "\n We can Use Multiple pattern using \e[1;31m -o \e[0m command in between the \e[1;31m -name \e[0m flags"
echo -e "Command \e[1;31m find . \( -name "*.txt" -o -name "*.sh" \) -print \e[0m"
find . \( -name "*.txt" -o -name "*.sh" \) -print

echo -e "\n Finding Using pipe opeartor in regex pattern !!!"
echo -e "Command \e[1;34m find . -iname '*.txt | .sh' -print \e[0m"
find . -name "*.txt | .sh" -print

echo -e "\nWe can also use regex pattern for matching filenames using wildcard."
echo -e "Command \e[1;31m find <directory> -regex <pattern> -print \e[0m"
find . -regex ".*\(\.txt\|\.sh\)$" -print

echo -e "\nUsing the depth commands like \e[1;31m -maxdepth \e[0m or \e[1;31m -mindepth \e[0m for restricting the find command to that depth from the parent directory."
echo -e "Command \e[1;31m find . -maxdepth 2 -name '*.txt' -print \e[0m"
find ~/projects -maxdepth 2 -name "*.txt" -print

rm my_script.sh sample1.txt sample2.txt
if [[ $? -eq 0 ]];then echo -e "\e[1;32m \nSuccessfully Removed The Dummy Files \e[0m"
else echo -e "\e[1;31m Unable To remove the dummy files!!! \e[0m"
fi





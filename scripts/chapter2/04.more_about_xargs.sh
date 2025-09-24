#!/bin/bash

echo "This File is for more info about xargs"
echo -e "When we pipe xargs with other commands then the xargs breaks the stdout of the previous commands into spaces(by default, as mentioned by IFS)"
echo -e "Run this command and find out the IFS (Internal Field Seperator). Command : \e[1;32m echo \$IFS \e[0m"

echo -e "So when passing stdout from the previos command there may arise some problems because of space, new lines."
echo -e "\e[1;32mTo by-pass this problem we can use -print0 and the xargs -0 so that the arguments are not seperated using space.\e[0m"

touch text\ file\ with\ spaces.txt
echo -e "This is the first line from spaced file\nThis is the second line from spaced file\nThis is the third line from spaced file." > text\ file\ with\ spaces.txt

touch text_file_without_spaces.txt
echo -e "This is the first line from without spaced file\nThis is the second line from without spaced file\nThis is the third line from without spaced file" > text_file_without_spaces.txt

echo -e "Lets count the number of lines in the text files in this directory."
find . -type f -name "*.txt" -print | xargs wc -l

echo -e "\nHere you can not see the file named 'text file with spaces.txt' because xargs split the stdin using space"
echo -e "To solve this problem we use \e[1;32m -print0 | xargs -0 \e[0m command."

find . -type f -name "*.txt" -print0 | xargs -0 wc -l

echo -e "\n\e[1;34mRemoving helper files"

rm -f ./text_file_without_spaces.txt
rm -f ./text\ file\ with\ spaces.txt


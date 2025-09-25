#!/bin/bash

echo "This file is for practicing checksum of files for checking any corrupted contents in the file"
echo -e "command: \e[1;32m md5sum <filename>\e[0m"
find . -maxdepth 1 -type f -name "*.sh" | xargs -I {} md5sum {} > file_sum.md5

echo -e "\e1;32mChecksum content of the .sh files present in the currrent directory is written in a .md5 file. The contents are:\e[0m"
cat file_sum.md5 | xargs -I {} ../utils/print_blue_line.sh {}

echo "Checking the md5 sum for verification"
md5sum -c *.md5

echo "We can use md5deep command for creating checksum file for mutiple files(folders) at once."
echo -e "\e[1;32mCommand md5deep -rl <directory_path> > folder_sum.md5"
md5deep -rl ../chapter1 > ../chapter1/folder_checksum.md5
if [[ $? -eq 0 ]];then echo -e "\e[1;31mThis Previous Command is not found\e[0m"
else echo -e "\e[1;32mCommand Executted Successfully\e[0m"
fi


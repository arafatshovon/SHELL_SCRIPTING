#!/bin/bash

echo "This file removes duplicate files based on their content"
echo "Hello World" > first.txt
echo "Hello World" > second.txt
echo "bash scripting" > third.txt
echo "bash scripting" > fourth.txt
echo "Unique File" > fifth.txt

delete_file()
{
	echo -e "\nDulicate File Name:$2"
	rm $2
	if [[ $? -eq 0 ]];then echo -e "\e[1;32mFiles removed Successfully.\e[0m"
	else echo -e "\e[1;31mFile Removal not successful\e[0m"
	fi
}

echo -e "\nContents of the files in this directory:\n"
find . -maxdepth 1 -type f -name "*.txt" | xargs -I {} ../utils/print_filename_and_content.sh {}

../utils/make_block.sh
echo -e "\nWe want to delete the files with same content. Process:"
../utils/print_blue_line.sh "1.First make checksum of files and save them." "2.Find Duolicate File based on checksum hash and Remove them."
../utils/make_block.sh

../utils/print_blue_line.sh "Command for Creating checksum File:" "md5sum *.txt"
md5sum *.txt > checksum_file.txt

../utils/print_green_line.sh "checksum_file content:" "$(cat checksum_file.txt)"
../utils/make_block.sh

echo -e "\nIn the content files containing with same hash are duplicate: \n"
../utils/print_green_line.sh "Command for checking duplicate File:" "cat <checksumfilename> | uniq -w 32 -d\n"
sort checksum_file.txt | uniq -w 32 -d
../utils/make_block.sh

echo -e "\nNow Deleting the file"
../utils/print_green_line.sh "command for deleting uniq files:" "cat <checksum_file> | uniq -w 32 | while read hash filename; do rdelete_file \$hash \$filename; done"
sort checksum_file.txt | uniq -w 32 -d | while read hash filename;
do
	delete_file $hash $filename
done
../utils/make_block.sh

echo -e "\nContents of the files in this directory after removing duplicate files:\n"
find . -maxdepth 1 -type f -name "*.txt" | xargs -I {} ../utils/print_filename_and_content.sh {}

find . -maxdepth 1 -type f -name "*.txt" -exec rm {} \;

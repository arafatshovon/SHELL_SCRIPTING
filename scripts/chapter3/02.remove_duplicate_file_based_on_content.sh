#!/bin/bash

echo "This file removes duplicate files based on their content"
echo "Hello world" > first.txt
echo "New World" > second.txt
echo "Hello world" > third.txt
echo "New World" > fourth.txt
echo "Unique File" > fifth.txt

function delete_file()
{
	rm $2
	if [[ $? -eq 0 ]];then echo "Files removed Successfully."
	else -e "\e[1;31mFile Removal not successful\e[0m"
	fi
}

echo -e "\nContents of the files in this directory:\n"
find . -maxdepth 1 -type f -name "*.txt" | xargs -I {} ../utils/print_filename_and_content.sh {}

../utils/make_block.sh
echo -e "\nWe want to delete the files with same content. Process:"
../utils/print_blue_line.sh "1.First make checksum of files and save them." "2.Find Duolicate File based on checksum hash and Remove them."

md5sum *.txt > checksum_file.txt
cat checksum_file.txt | uniq -w 32 -d | xargs -I {} delete_file {}

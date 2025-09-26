#!/bin/bash

../utils/print_yellow_line.sh "This file is for practicing temporary file and file splitting"
../utils/print_yellow_line.sh "We some times need to make some temporary files which are stored in the /tmp folder in Linux" "command : <filename>=$(mktemp)"
echo -e "\nThis will make temporary file in /tmp/<filename> then give back the file path"
my_temporary_file=$(mktemp)
../utils/print_green_line.sh "\ntemporary file name: $my_temporary_file"

rm $my_temporary_file

../utils/print_red_line.sh "\nIf you make temporary folder then use -d flag" "To make only temporary path not the file use -u flag. Command:"
../utils/print_blue_line.sh "filename=$(mktemp -d)"
dirname=$(mktemp -d)
../utils/print_green_line.sh "\nTemporary folder created at $dirname"
rm -rf $dirname
../utils/make_block.sh

../utils/print_red_line.sh "File splitting ..."
../utils/print_red_line.sh "We can split file by their size and save it automatically." "split -b <filesize> <filename>"
split -b 2k ../data/ConsumerBrand_Training_List.csv
../utils/print_red_line.sh "Files after splitting" "$(find . -maxdepth 1 -type f ! -name "*.sh" -print)"
../utils/make_block.sh

../utils/print_red_line.sh "Files can be split different suffixes rather than custom suffixes. command:" "split -b <filesize> <filename> -d -a 4 split_file"
split -b 2k ../data/ConsumerBrand_TRaining_list.csv -d -a 4 split_file
ls | grep split_file | xargs -I {} ../utils/print_green_line.sh {}

../utils/print_blue_line.sh "Cleaning up Files"
find . -maxdepth 1 -type f ! -name "*.sh" | xargs -I {} rm {}


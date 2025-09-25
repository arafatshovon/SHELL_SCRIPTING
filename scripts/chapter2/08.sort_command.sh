#!/bin/bash

echo "Some good uses of sort !!!!"
../utils/print_green_line.sh "Commands\nsort -nrk <filename> > <file_for_saving>\nHere -r is for reverse\n-n is for numeric"

echo "Createing Some dummy Files"
echo -e "1 Linux 500\n2 Windows 2000\n3 Mac 5000\n4 Unix 400\n5 Minix 150" > data.txt
../utils/print_green_line.sh "$(cat data.txt)"

echo -e "\nWe want to sort the above data for different columns"
../utils/make_block.sh

../utils/print_red_line.sh "Using Index column"
sort -nrk 1 data.txt
../utils/make_block.sh

../utils/print_red_line.sh "Using second Column(Name)"
sort -nk 2 data.txt
../utils/make_block.sh

../utils/print_red_line.sh "Using third Column(Price)"
sort -nk 3 data.txt
../utils/make_block.sh

../utils/print_red_line.sh "Sort the current directory Files."
ls | sort
../utils/make_block.sh

../utils/print_green_line.sh "Generally sort seperate column using spaces, but what if there is no spaces. Like this:"
echo -e "1010hellothis\n2189ababbba\n7464dfddfdfd" > data.txt
../utils/print_red_line.sh "$(cat data.txt)"

echo -e "\nTo seperate using some characters we can use \e[1;32m sort -k <char1>,<char2> <filename>\e[0m"
../utils/make_block.sh

../utils/print_red_line.sh "Using 2,3 characters as key for sorting"
sort -nrk 2,3 data.txt
../utils/make_block.sh

../utils/print_red_line.sh "we can use -b for deleting leading and continuous space, -d for sorting in dictionary order."

rm data.txt

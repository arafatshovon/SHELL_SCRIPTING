#!/bin/bash
echo "This File contains set operations like intersection, union, common on files."
echo "we can use this commands to see the same, different contents of the multiple files."
../utils/print_red_line.sh "The files have to be sorted to peerform the set operations."

echo -e "Apple\nOrange\nGold\nSilver\nSteel\nIron" > first.txt
echo -e "Orange\nGold\nCookies\nCarrot" > second.txt

echo "Contents of first file:"
../utils/print_green_line.sh "$(cat first.txt)"

echo -e "\nContents of second file:"
../utils/print_green_line.sh "$(cat second.txt)"
../utils/make_block.sh

echo -e "\nCommand to check same and different content of file:"
../utils/print_blue_line.sh "comm <sortedfilename1> <sortedfilename2>"

sort first.txt -o first.txt
sort second.txt -o second.txt

comm first.txt second.txt

../utils/make_block.sh


../utils/print_red_line.sh "First Column contains content from only first file" "Second column contains content from only second file" "Third column contains the common content"
../utils/make_block.sh "We can keep the contenst we want and discard other contents. Command:"
../utils/print_blue_line.sh "sort <filename1> -o <filename1>" "sort <filenaem2> -o <filename2>" "comm <filename1> <filename2> -<column you want to discard>"

comm first.txt second.txt -1 -2


../utils/make_block.sh

../utils/print_green_line.sh "In the above part the we discarded the uncommon parts from both files." 
../utils/make_block.sh

echo -e "\nMake a single file from the unique contents of the two files"
../utils/print_blue_line.sh "command:" "comm <filename1> <filename2> -<column name you want to discard> | sed \'s^\\t//\'"

comm first.txt second.txt -3 | sed "s/^\t//"

../utils/make_block.sh
../utils/print_green_line.sh "The above command merges unique contents from the two files into one."

find . -maxdepth 1 -type f -name "*.txt" -print0 | xargs -0 -I {} rm {}





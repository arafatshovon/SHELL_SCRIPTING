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
find . -maxdepth 1 -type f -name "*.txt" -print0 | xargs -0 -I {} rm {}
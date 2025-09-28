#!/bin/bash
echo "This File shows some other operations using split command"
echo "We can split a file based on regex from the file content."
echo "a smaple File is "
cat ../data/fruits.txt
../utils/make_block.sh

echo "To split file based on regex pattern we have to use the csplit command with regex pattern. command:"
../utils/print_red_line.sh "csplit <filename> /regex/ -f <file_prefix> -n <number_of_file_number_prefix> -s '{*}' -b '%02d.txt'"
csplit ../data/fruits.txt /category/ -f category -n 2 -s "{*}" -b "%02d.txt"
echo -e "\nsplitted File names and Content:"
find . -maxdepth 1 -type f -name "category*.txt" | xargs -I {} cat {} | xargs -I {} ../utils/print_blue_line.sh {}
find . -maxdepth 1 -type f -name "category*.txt" | xargs -I {} rm {}
../utils/make_block.sh

echo -e "\nWe can use split file_basename and file_extension."
filename="my_photo.jpg"
echo -e "\nA sample File Name: $filename"
echo -e "\ncommand:"
../utils/print_red_line.sh "basename={<filename>%.*}" "extension={<filename>#*.}"

basename=${filename%.*}
extension=${filename#*.}
../utils/print_red_line.sh "basename=$basename" "extension=$extension"



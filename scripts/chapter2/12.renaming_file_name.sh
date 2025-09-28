#!/bin/bash
echo "This File is for practicing renaming of files"
../utils/print_red_line.sh "File renaming can be done through various command using mv, rename." "command: mv <old_filename> <new_filename>"
touch ../data/first.txt ../data/SECOND.txt ../data/file\ with\ space.txt

echo "Files from current directory: $(ls -la ../data/)"
../utils/make_block.sh

echo -e "\nRenaming the first.txt file to FIRST.txt file. Command:"
../utils/print_red_line.sh "mv first.txt FIRST.txt"
mv ../data/first.txt ../data/FIRST.txt
../utils/print_green_line.sh "Files after Renaming: $(find ../data/ -maxdepth 1 -type f -name "*.txt" -print)"
../utils/make_block.sh

echo -e "\nRenaming files from Upper case to lower case: command:"
../utils/print_red_line.sh "rename 'y/a-z/A-Z/' *"
rename y"/A-Z/a-z/" ../data/*.txt
../utils/print_green_line.sh "Files after renaming: $(find ../data/ -maxdepth 1 -type f -name "*.txt" -print)"
../utils/make_block.sh

echo -e "\nRenaming spaces with _ : command:"
../utils/print_red_line.sh "rename 's/ /_/' *"
rename "s/ /_/g" ../data/*.txt
echo -e "\nFiles after renaming:"
../utils/print_red_line.sh "$(find ../data/ -maxdepth 1 -type f -name "*.txt" -print)"

echo -e "\nRemoving Extra files :"
find ../data/ -maxdepth 1 -type f \( ! -name "fruits.txt" \) -a \( -name "*.txt" \) | xargs -I {} rm {}


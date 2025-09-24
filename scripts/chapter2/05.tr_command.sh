#!/bin/bash
echo -e "\e[1;32m This File is for practicing \e[1;34m tr \e[0m command"
echo -e "tr changes a set of characters to another set of characters. like \e[1;34m (startchar-endchar)\e[0m. If the character set is not valid then it will be a treated as 
a set of character\e[0m"

echo "THIS LINE IS FULL UPPER CASE BUT WILL BE PRINTED AS LOWER CASE CHARACTER." | tr "A-Z" "a-z"
echo -e "\e[1;31m01907791897\e[0m becomes (after reverse:)" | tr "0-9" "9876543210"

echo -e "\e[1;34mROT13 is a well known encryption algorithm. Here the characters are roted through 13 characters.\e[0m"
echo -e "\e[1;34mThis plain Text will be encrypted Through ROT13 ALGORITHM\e[0m"
echo -e "\e[1;32mThis plain text will be encrypted Through ROT13 ALGORITHM\e[0m" | tr "a-zA-Z" "n-za-mN-ZA-M"

echo -e "\e[1;34mtr can be used to convert tabs to spaces\e[0m"
echo "This line Contains	tab	before and after the tab word" > test.txt
cat test.txt

echo -e "\nRemove the tabs using tr command: \e[1;32m tr '\t' ' ' < test.txt \e[0m"
tr '\t' ' ' < test.txt | cat | xargs -I {} ../utils/print_green_line.sh {}

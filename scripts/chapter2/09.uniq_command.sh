#!/bin/bash

../utils/print_yellow_line.sh "This File is For uniq command"
../utils/make_block.sh

echo -e "Transformer\nBash\nLinux\nWindows\nShell\nLinux\nTransformer\nShell\nBash\nTransformer\nWindows" > data.txt
../utils/print_green_line.sh "The content of a text file is\n$(cat data.txt)"
../utils/make_block.sh

../utils/print_red_line.sh "Print the unique contents after soritng"
sort -k 1 data.txt | uniq
../utils/make_block.sh

../utils/print_red_line.sh "Print the contents with how many times they appear."
../utils/print_green_line.sh "sort -k <column_number> <filename> | uniq -c"
sort -k 1 data.txt | uniq -c
../utils/make_block.sh

../utils/print_red_line.sh "Print Only the Unique Lines"
../utils/print_green_line.sh "sort -k <column_number> <filename> | uniq -d"
sort -k 1 data.txt | uniq -d
../utils/make_block.sh


../utils/print_red_line.sh "Some times we would want to find out unique things based on some set of characters rather than whole content"
echo -e "u:01:GNU\Nd:04:Linux\nu:01:Bash\nu:01:Hack" > data.txt
../utils/print_red_line.sh "Content of a file is:\n$(cat data.txt)"
../utils/print_red_line.sh "command : sort <filename> | uniq -s <offset_character> -w <number_of_characters_to_sort_on>"
sort data.txt | uniq -s 2 -w 2

rm data.txt

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

rm data.txt

#!/bin/bash

../utils/print_red_line.sh "This file is for practicing temporary file and file splitting"
../utils/print_red_line.sh "We some times need to make some temporary files which are stored in the /tmp folder in Linux" "command : <filename>=$(mktemp)"
echo -e "This will make temporary file in /tmp/<filename> then give back the file path"
my_temporary_file=$(mktemp)
../utils/print_green_line.sh "temporary file name: $my_temporary_file"

rm $my_temporary_file

../utils/print_red_line.sh "If you make temporary folder then use -d flag" "To make only temporary path not the file use -u flag"



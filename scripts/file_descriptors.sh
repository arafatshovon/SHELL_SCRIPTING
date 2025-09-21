#!/bin/bash

echo "This file is for showing file descriptotrs in a  bash file."
echo -e "\e[1;31m 0, 1, 2 are predefined file redirections in Linux System. 0 - stdin, 1 - stdout, 2 - stderr. \e[0m"
echo -e  "NOw we are trying to make custom descriptors with \e[1;32m exec \e[0m command"

echo "Taking content to stdin using 4 as redirection"
exec 4<test.txt

echo "This is a new Line inserted into the file test.txt" > test.txt
echo -e "showing the data from test.txt using \e[1;32m cat \e[0m command $(cat test.txt)"

echo "showing the content using new file descriptors"
cat<&4

echo -e  "\e[1;33m File Descriptor for writing \e[0m"
exec 5>>test.txt
echo "Line appended through file descriptor" >&5
echo "Now reading content from the file."
cat test.txt


if ! rm test.txt 2>/dev/null; then
	echo -e "\e[1;31m Trying to delete the test.txt file created for running this script. Not Found \e[0m"
else
	echo "Deleted the test.txt file, created for running this script."
fi


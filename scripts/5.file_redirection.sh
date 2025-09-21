#!/bin/bash

#this is a file for learning redirection

echo "This will be writen into a text file. Through direction operator > pointing towards a file." > test.txt

chmod 001 test.txt
echo -e "\e[1;32m Try to acces the unaccessible file using cat command. You will get an error.\e[0m"
cat test.txt

echo -e "\e[1;32m Now We will try to redirect the error message to another file.\e[0m"

cat test.txt 2>error.txt 1>output.txt
echo "Now lets read the redirected message from the corresponding text files."
echo "Reading Error file:"
cat error.txt
echo "Reading Outout file:"
cat output.txt

cat<<EOF>log.txt
This are some random file content
This will be written in the cat command first then into the log.txt file
EOF


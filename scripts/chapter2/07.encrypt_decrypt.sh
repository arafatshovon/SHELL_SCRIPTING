#!/bin/bash

../utils/print_red_line.sh "We can use commands like crypt, gpg, base64 for encrypting files"
echo "This line is for checking encryption algorithm" > test.txt
../utils/print_blue_line.sh "A sample text for encryption : $(cat test.txt)"

../utils/print_green_line.sh "command for encryption : ccrypt <filename>"

ccrypt test.txt

../utils/print_green_line.sh "contents of the encrypted file : $(cat test.txt.cpt)"

../utils/print_blue_line.sh "decrypt the file. command : ccrypt -d <filename>"

ccrypt -d test.txt.cpt

../utils/print_green_line.sh "Decrypted contents : $(cat test.txt)"

../utils/make_block.sh

../utils/print_blue_line.sh "WE can use other commands like gpg, base64 for encryption also. Command for gpg:"
../utils/print_green_line.sh "encryption: gpg -c <filename>" "decryption: gpg <filename>"
gpg -c test.txt

../utils/print_blue_line.sh "Contents of the encrypted file is :$(cat test.txt.gpg)"
gpg test.txt.gpg
../utils/print_green_line.sh "Contents of the dectypted file:$(cat test.txt)"


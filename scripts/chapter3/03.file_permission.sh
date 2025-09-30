#!/bin/bash
echo "Creating a File for File Permission Demonstration"
echo "We can see the file permission by using the command 'ls -l <directory>. It will print the file permission along with other details of the file."
echo -e "\nFile Permission fof files in this directory:"
ls -l .

../utils/make_block.sh
echo -e "\nIn the above sections the first column represents the file permission."
echo "The first character represents the file type. The next nine characters represent the file permissions."
echo "The first three characters represent the owner's permissions, the next three represent the group's permissions, and the last three represent the permissions for others."
echo "The characters can be 'r' for read, 'w' for write, and 'x' for execute. A '-' indicates that the permission is not granted."
../utils/make_block.sh

echo -e "\nChaging File Permissions.\n"
../utils/print_red_line.sh "Adding Read Permission:"
../utils/print_green_line.sh "chmod u+r <file_name>"
find . -maxdepth 1 -type f -name "*.sh" -exec chmod u+r {} \;

../utils/print_red_line.sh "Adding Write Permission:"
../utils/print_green_line.sh "chmod u+w <file_name>"
find . -maxdepth 1 -type f -name "*.sh" -exec chmod u+w {} \;

../utils/print_red_line.sh "Adding Execute Permission:"
../utils/print_green_line.sh "chmod u+x <file_name>"
find . -maxdepth 1 -type f -name "*.sh" -exec chmod u+x {} \;

../utils/make-block.sh

echo -e "\nAdding File Ownership:\n"
../utils/print_green_line.sh "chown <user_name>.<group_name> <file_name>"
chown "$USER.$(id -gn $USER)" scripts/chapter3/03.file_permission.sh
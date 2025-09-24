#!/bin/bash
echo -e "\e[1;32m This file is for practicing xargs \e[0m"
echo -e "\e[1;32m0 1 2 3 4\n 5 6 7 8\n 9 10 11 12\n 13 14 15\e[0m" > output.txt
echo -e "Content of output.txt file: $(pwd)" 
cat output.txt

echo -e "\nWe can send this output of the previous command as a single line using xargs for the next command"
cat output.txt | xargs

echo -e "\nUsing -n flags helps us spliting the command into n arguments per line. command \e[1;32m cat output.txt |xargs -n 2\e[0m"
cat output.txt | xargs -n 2

echo -e "\nBy default the delimeter used in the xargs command is the space. But we can use our own delimeter specifying in the command." 
echo "For example the string split1Xsplit2Xsplit3Xsplit4 has the X string in it. WE can use the X character to split it. Command \e[1;31m cat output.txt | xargs -d X \e[0m"
echo -e "\e[1;32m split1Xsplit2Xsplit3Xsplit4Xsplit5 \e[0m" | xargs -d X

echo -e "WE can send arguments to another shell script using xargs. For example \e[1;32m cat args.txt | xargs -n 2 ./print_argument.sh \e[0m"

cat output.txt | xargs -n 2 ./print_arguments.sh

echo -e "\nWe can give other arguments along wiht arguments reading from a file using the xargs commands. So noth variable arguments and constants argumnts."
echo -e "command : \e[1;32m cat output.txt | xargs -I {} /print_arguments.sh -p {} -1"
cat output.txt | xargs -I {} ./print_arguments.sh "first_argument" {} "third_argument"



#!/bin/bash 
arguments=$@
for args in ${!arguments[@]};
do
    echo -e "\e[1;32m "Index : $args : ${arguments[$args]}
done

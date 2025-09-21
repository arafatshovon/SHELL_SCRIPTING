#!/bin/bash

echo "This file is for testing debugging in shell script"
for i in range  1 2 3 4 5 ;
do
	set -x
	echo $i;
done


#!/bin/bash

echo "This file shows utilities of Time"

echo -e "\e[1;34m Printing Loacl Time: \e[0m"
echo -e "\e[1;32m $(date) \e[0m"

echo "Linux or Unix time is the second counted frm the date 1970-01-01. Linux or Unix Time: $(date +%s)"
echo "You can use your own Formatted string for printing date"
echo "For weekday: %a(Sun) or %A(Sunday)"
echo "For Month: %b(Nov) %B(NOvember)"
echo "For day %d(21)"
echo "For Date %D (mm/dd/yyyy) format"
echo "For hour %I Minute %M Second %S"
date "+%D %I:%M:%S"



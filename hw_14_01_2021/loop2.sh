#!/bin/bash

# Write a shell script that asks the user for the number of lines they would like to display from the/etc/passwd file and display those lines

i = 0
echo Enter a number of lines.
read num
head -n $num /etc/passwd | while read LREAD
do
    i=$(($i + 1))
    echo "$i: ${LREAD}"
done

#!/bin/bash

# Write a shell script that loops through the /etc/passwd file one line at a time.
# Prepend each line with a line number followed by a colon and then a space

i = 0
cat /etc/passwd | while read LREAD
do
    i=$(($i + 1))
    echo "$i: ${LREAD}"
done

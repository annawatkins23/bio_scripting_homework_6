#!/bin/bash

#read -p "enter word to search for in file $1: " word

#echo "The word you chose was $word"

line_numbers=`grep -n -o "$2" $1 | sort -n | uniq -c | cut -d : -f 1 | awk '{print "For line " $2 " the searched word was found " $1 " time(s)"}'`
echo "Summary for file $1:"
echo "$line_numbers"

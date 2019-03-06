#!/bin/bash

###Make sure to include word to search for after the script name

for FILE in ~/bio_scripting_homework_6/part_2/book_pages/*.txt
do
    echo "The word searched was $1" >> part_1_output.txt
    source ~/bio_scripting_homework_6/part_1/string_finder_HUSKEY.sh $FILE $1 >> part_1_output.txt
done

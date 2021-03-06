#!/bin/bash

# get the input list for parsing
# parse the data we will need as function name | buffer number | poison size (without calculating null bytes)

ls xx* > list.txt
input="./list.txt"

echo "[+] file # for parsing: $(wc -l list.txt | awk '{print $1}')"

while IFS= read -r line
do      
        echo "$(grep function $line | head -n 1 | grep -o -P '(?<=\<).*(?=\>)') | $(grep buffer $line | wc -l) | $(grep h2th3k $line | awk -F ':' '{print $2}' | sed 's/00//g' | sed 's/\$h2th3k\$//g' | wc -w)"

done < "$input"

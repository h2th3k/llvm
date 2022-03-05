#!/bin/bash

#get the input list for parsing

ls xx* > list.txt
input="./list.txt"

echo "[+] file # for parsing: $(wc -l list.txt | awk '{print $1}')"

while IFS= read -r line
do      
        echo "$(grep function $line | head -n 1 | grep -o -P '(?<=\<).*(?=\>)') | $(grep buffer $line | wc -l) | $(grep h2th3k $line | awk -F ':' '{print $2}' | sed $

done < "$input"

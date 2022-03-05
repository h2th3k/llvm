#!/bin/bash
  
#split every function related info into a file

func_num=$(grep "ASAN processStaticAllocas" raw.log | wc -l)
echo "[+] total functions # $func_num"

split_num=$(( func_num / 2 ))
echo "[+] please paste: csplit raw.log '/ASAN processStaticAllocas/' '{$split_num}'"


#get the input list for parsing

ls xx* > list.txt
input="./list.txt"

echo "[+] file # for parsing: $(wc -l list.txt | awk '{print $1}')"

while IFS= read -r line
do
        echo "$(grep function $line | head -n 1 | grep -o -P '(?<=\<).*(?=\>)') | $(grep buffer $line | wc -l) | $(grep h2th3k $line | awk -F ':' '{print $2}' | sed 's/00//g' | sed 's/\$h2th3k\$//g' | wc -w)"

done < "$input"


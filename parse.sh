#!/bin/bash

#parse the information we will need for statistic

#csplit test.log '/ASAN processStaticAllocas/' '{535}' ---> to split each function per file (535*2 is the total # of ASAN processStaticAllocas)
#func_name=$(grep function $line | head -n 1 | grep -o -P '(?<=\<).*(?=\>)')
#buffer_num=$(grep buffer $line | wc -l)
#poison_size=$(grep h2th3k $line | awk -F ':' '{print $2}' | sed 's/00//g' | sed 's/\$h2th3k\$//g' | wc -w)

while IFS= read -r line
do
       echo "$(grep function $line | head -n 1 | grep -o -P '(?<=\<).*(?=\>)') | $(grep buffer $line | wc -l) | $(grep h2th3k $line | awk -F ':' '{print $2}' | sed 's/00//g' | sed 's/\$h2th3k\$//g' | wc -w)"

done < "$1"

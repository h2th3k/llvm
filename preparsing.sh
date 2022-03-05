#!/bin/bash

# please name the output dbgs info from compilation as "raw.log"
# split every function related info into a file, then use parse.sh to further parse every file.


func_num=$(grep "ASAN processStaticAllocas" raw.log | wc -l)
echo "[+] total functions # $func_num"
echo "[+] please paste: csplit raw.log '/ASAN processStaticAllocas/' '{$func_num}'"

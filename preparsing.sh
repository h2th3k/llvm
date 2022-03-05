#!/bin/bash
  
#split every function related info into a file

func_num=$(grep "ASAN processStaticAllocas" raw.log | wc -l)
echo "[+] total functions # $func_num"
echo "[+] please paste: csplit raw.log '/ASAN processStaticAllocas/' '{$func_num}'"

#!/bin/bash
# Execute with ./check_plots.sh

truncate verify.txt --size 0

for f in `find /mnt/chia/*.plot`
do
  echo -e "file: $f"
  success=$(/home/chia/ProofOfSpace check 100 -f $f | tail -n 1 | grep -Eo '[0-9]+%')
  echo $f,$success | tee -a verify.txt
done

python3 plot_del.py

#!/bin/bash
domain="$1"
outts="$outt/$domain/subs"

for sub in $(cat $outts/subs.txt) do
    ping -c1 -W1 $sub > /dev/null 2>&1
    if [[ $? -eq 0 ]]; # checking status code
    then
        echo -e "$sub" | tee -a $outts/alive.txt

    else
        echo -e "$foo" >>  $outts/Nalive.txt
    fi
done

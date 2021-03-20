#!/bin/bash

# usage: isup.sh domain.tld subs
# adjusting to my rit func

#check wildcard
if [[ "$(dig @1.1.1.1 A,CNAME {test321123,testingforwildcard,plsdontgimmearesult,simooodfdfdf}.$1 +short | wc -l)" -gt "1" ]]; then
    echo "[!] $1 -> Possible wildcard detected. check further"
    exit
else
	#ping -c1 -W1 $1 > /dev/null 2>&1 && echo $1
	#ping -c1 -w1 -n -4 $1 > /dev/null 2>&1 && echo $1
	timeout 1 ping -c1 -n -4 $1 > /dev/null 2>&1 && echo $1
fi

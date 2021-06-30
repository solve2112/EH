#!/bin/bash

if [ "$1" == "" ]
then
echo "you forgot an ip"
echo "syntax: ./ipsweep x.x.x"

else
for unicorn in `seq 1 254`; do
ping -c 1 $1.$unicorn | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

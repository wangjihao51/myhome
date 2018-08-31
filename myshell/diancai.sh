#!/bin/bash
while :
do 
line=$(cat diancai.txt | wc -l )
num=$[RANDOM%line+1]
sed -n "${num}p"   diancai.txt
sleep 0.1
clear
kill $!
done



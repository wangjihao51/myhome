#!/bin/bash
sum=0
for i in `seq 1000`
do 
   sum=$[sum+i]
done
  echo "$sum"

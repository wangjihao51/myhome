#!/bin/bash
a=`seq 200 | awk '$1%3==0'`
for i in $a
do 
  echo $[i*i]
done

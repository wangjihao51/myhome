#!/bin/bash
touch {a,b,c,d,e,f}.txt
for i in `ls *.$1`
do
  mv $i ${i%.*}.$2
done

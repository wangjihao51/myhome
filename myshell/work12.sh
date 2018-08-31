#!/bin/bash
for i in `cat *.txt`
   do 
  mv $i  ${i%.*}.doc
done

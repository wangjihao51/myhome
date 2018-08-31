#!/bin/bash
for i in {1..42}
do 
   for j in `seq $i`
       do 
          echo -n "$[i*j]  "
       done
   echo
done

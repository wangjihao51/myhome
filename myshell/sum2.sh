#!/bin/bash
for i in {1..20}
do
  [ $[i%6] -ne  0 ] && continue 

    echo $[i*i]
done


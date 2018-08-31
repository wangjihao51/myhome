#!/bin/bash
net=192.168.4
for i in {1..254}
do 
   ping -c 1 -i 0.1 -w1 $net.$i > /dev/null
   if [ $? -eq 0 ];then
      echo "$net $i live"
   else 
      echo "$net $i dead"
    fi
done

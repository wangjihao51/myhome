#!/bin/bash
cup=$(cat /proc/cpuinfo |grep 'vendor id')
int=$($cup|grep GenuineIntel)
if [ -z $int ];then
   echo "Intel"
  else 
   echo "AMD"
fi

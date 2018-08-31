#!/bin/bash
cup=$( cat /proc/cpuinfo|grep "vendor id_")
int=$($cpu |grep GenuineIntel)
if [ -z  $int ];then
  echo "Intel"
else 
  echo "AMD"
fi

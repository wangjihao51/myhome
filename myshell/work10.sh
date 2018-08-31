#!/bin/bash
while :
 do 
  clear
  ifconfig |grep 'RX packets'
  sleep 1
  echo 
  ifconfig |grep 'TX packets'
  sleep 1
  echo
done 

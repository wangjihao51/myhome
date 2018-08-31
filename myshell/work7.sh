#!/bin/bash
myping(){
ping -c 2 -i 0.2 -w 1 192.168.4.$1 &>/dev/null
      if [ $? -eq 0 ];then
          echo "192.168.4.$1 is up!"
      else
          echo "192.168.4.$1 is down!!!"
      fi 
}
for i in `seq 254`
do 
  myping $i &
done
  wait 
  echo "OK"

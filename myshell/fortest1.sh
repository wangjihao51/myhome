#!/bin/bash
for name   in $(cat /root/user.txt)  
do 
   useradd $name 
   sleep 0.1
   echo 123456 |passwd --stdin $name
   sleep 0.1 
done
   tail -20 /etc/passwd

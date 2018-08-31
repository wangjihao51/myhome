#!/bin/bash
cd $1
sum=0
for i in `ls -r *`
do 
   if [ -f  $i ];then
   let sum++
   echo "文件名为：$i"
   fi
done
echo "文件总量为：$sum"

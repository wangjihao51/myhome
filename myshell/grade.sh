#!/bin/bash
u=0
num=$[RANDOM%100+1]
while :
do
read -p "请输入一个数：" i
let u++
        if [ -z $i ];then
                echo "请输入一个数"   
	elif [ "$i" -gt $num ];then
   	   
   		echo "您猜大了"
	elif [ "$i" -eq $num ];then
   		echo "您猜对了,一共猜了$u次"
   		exit 
	elif [  "$i" -lt $num ];then
    		echo "您猜小了"
        else 
             echo "请输入一个数字，谢谢"
          fi
    sleep 1     
done

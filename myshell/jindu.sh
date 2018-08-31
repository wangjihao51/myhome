#!/bin/bash
jindu(){
while :
do 
   echo -ne '\033[43m \033[0m'
   sleep 0.2
done
}
jindu &
cp -a $1 $2
kill $!
echo "拷贝完成"

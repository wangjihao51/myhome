#!/bin/bash
x='123456'
mypass(){
pass=""
for i in {1..6}
do
num=$[RANDOM%6]
tmp=${x:$num:1}
pass=$pass$tmp
done
echo $pass
}
u=0
while [ `mypass` !=  "132465" ]
do 
  mypass & 
  let u++
done
  echo "搜索了$u 次"
  echo "密码是$x"

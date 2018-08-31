#!/bin/bash
read -p "请输入一个数字：" num1
read -p "请再输入一个数字：" num2
if [ $num1 -gt $num2 ];then
 echo "数字排序如下：
$num1
$num2"
elif [ $num1 -lt $num2 ];then
  echo "数字排列如下：
$num2
$num1"
else 
  echo "输入的数字相同"
fi

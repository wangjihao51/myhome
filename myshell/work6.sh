#!/bin/bash
game=( 石头 剪刀 布)
num=$[RANDOM%3+1]
clear
echo "这是一个和计算机石头剪刀布的游戏"
echo "1-->石头"
echo "2-->剪刀"
echo "3-->布"
read -p "请输入一个手势(1.2.3):" i
case $i in 
1)
  if [ $num -eq 1 ];then
     echo "平局"
  elif [ $num -eq 2 ];then
     echo "你胜"
  else
     echo  "计算机胜"
  fi;;
2)
   if [ $num -eq 1 ];then
      echo "计算机胜"
   elif [ $num -eq 2 ];then
      echo "平局"
   else 
      echo "你胜"
   fi;;
3)
   if [ $num  -eq 1 ];then 
      echo "你胜"
   elif [ $num -eq 2 ];then 
      echo "计算机胜"
   else  "平局"
   fi;;
*)
   echo "请输入数字1,2,3"
esac

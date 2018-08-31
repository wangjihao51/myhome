#!/bin/bash
read -p "请输入分钟(0-59):" min
read -p "请输入小时(0-59):" hour
read -p "请输入日(0-59):" day
read -p "请输入月(0-59):" mon
read -p "请输入周(0-59):" week
read -p "请输入计划需要执行的命令或者脚本(0-59):" plan
echo "$min $hour $day $mon $week  $plan" >>/etc/crontab



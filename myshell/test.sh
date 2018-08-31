#!/bin/bash
read -p "请输入帐号：" user
[ -z $user ] && echo "没有输入用户名" && exit
stty -echo
read -p "请输入密码：" pass
stty echo
pass=${pass:-123456}
useradd $user  >&2
echo $pass |passwd --stdin $user >/dev/null
echo "用户创建成功"
echo "密码设置成功"

#!/bin/bash
cpu=`uptime |awk '{print $NF}'`
echo "本机CPU最近15分钟的负载是：$cpu"
int=`ifconfig eth0 |awk '/RX p/{print $5,$6,$7}'`
echo "入站网卡流量为：$int"
out=`ifconfig eth0 |awk '/TX p/{print $5,$6,$7}'`
echo "出站网卡流量为：$out"
fr=`free | awk '/Mem:/{print $4}'`
echo "剩余内存容量为：$fr"
df=`df -h |awk '{print $4}'`
echo "剩余容量：$df"
user=`cat /etc/passwd | wc -l`
echo "本地用户数量为：$user"
wh=`who |wc -l`
echo "当前登陆计算机的账户数量为：$wh"
qa=`rpm -qa |wc -l`
echo "当前以安装软件数量：$qa"


#!/bin/bash
i=$(ifconfig eth0|grep inet)
if [ ! -z  "$i" ];then
    systemctl restart network.service
    echo "$?"
    echo "重起成功！"
else 
    echo "error!!!"
fi

#!/bin/bash
case $1 in 
start)
   /usr/local/nginx/sbin/nginx;;
stop)
   /usr/local/nginx/sbin/nginx -s stop;;
status)
   /usr/local/nginx/sbin/nginx -v
   netstat -ntulp |grep -q nginx
   if  [ $? -eq 0 ];then
    echo "服务已启动！"
   else 
    echo "服务为启动！"
    fi;;
restart)
   /usr/local/nginx/sbin/nginx -s stop
   /usr/local/nginx/sbin/nginx;;
*)
   echo "ERORR";;
esac
  

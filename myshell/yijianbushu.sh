#!/bin/bash
judu(){
while :
do 
echo -n '#'
sleep 0.5
done
}
echo "请下载源码包nginx-1.12.2.tar.gz到/root下"
a=`yum repolist |awk '/repolist/{print $2}'|sed 's/,//'`
if [ $a -le 0 ];then
   echo "YUM源不可用！" 
   exit
fi
echo "YUM源和源码包已就位"
echo  "开始部署："
judu &
yum -y install gcc openssl-devel pcre-devel &>/dev/null
tar -xf /root/nginx-1.12.2.tar.gz
cd /root/nginx-1.12.2
./configure &>/dev/null
make &>/dev/null
make install &>/dev/null
echo "部署完成！"
kill $!



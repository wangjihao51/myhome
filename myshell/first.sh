#!/bin/bash
  echo "hello world"

rm -rf /etc/yum.repos.d/*.repo
echo "[rhel7]
name=rhel
baseurl=ftp://192.168.4.254/rhel7
gpgcheck=0
enabled=1"> /etc/yum.repos.d/rhel.repo 
echo "软件数量有："
yum repolist |tail -1

yum -y install vsftpd &>/dev/null
echo "软件安装完成"
systemctl start vsftpd
systemctl enable vsftpd &>/dev/null
echo "脚本执行完成" 

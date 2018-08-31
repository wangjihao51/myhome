#!/bin/bash
yum -y reinstall vsftpd &>/dev/null
cp /etc/vsftpd/vsftpd.conf{,.back}
sed -i 's/^#anon_/anon_/g' /etc/vsftpd/vsftpd.conf
systemctl restart vsftpd 
systemctl enable  vsftpd
chmod 777 /var/ftp/pub
echo "FTP服务已启动"

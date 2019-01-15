#!/bin/bash
# 由于挂载到容器的目录可能是一个空目录，也肯能是已经有数据的持久卷，所以先对以下路径进行判断
# 如果已存在/var/www/html/owncloud/version.php，则不执行解压，如果没有则解压至/var/www/html/目录
if [ ! -f /var/www/html/owncloud/version.php ] 
then
   tar zxvf /home/owncloud-10.0.10.tar.gz -C /var/www/html/
   chown -R apache.apache /var/www/html/owncloud
fi
# 执行httpd服务，保证这个进程可以持续运行
/usr/sbin/httpd -D FOREGROUND

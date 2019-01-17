#!/bin/bash
if [ ! -f /var/www/html/phpmyfaq/main.php ]
then
   tar xvf /home/phpmyfaq-2.9.11.tar.gz -C /var/www/html/
   mkdir /var/www/html/phpmyfaq/{attachments,data,images}
   chown -R apache.apache /var/www/html/phpmyfaq
fi
/usr/sbin/httpd -D FOREGROUND

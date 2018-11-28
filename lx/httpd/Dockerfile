FROM	192.168.36.252/library/loongson
MAINTAINER Feng <feng.ye@i-soft.com.cn> 
#RUN	yum makecache && yum install -y httpd && systemctl start httpd && systemctl enable httpd && systemctl stop firewalld && systemctl disable firewalld && yum clean all
RUN yum install -y httpd && yum clean all && ln -s /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime -f
EXPOSE 80
RUN sed -ri \
                -e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' \
                -e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' \
                "/etc/httpd/conf/httpd.conf";
ADD html.tar.gz /var/www/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

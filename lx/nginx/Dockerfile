FROM	192.168.36.252/library/loongson
MAINTAINER Feng <feng.ye@i-soft.com.cn> 
#RUN	yum makecache && yum install -y httpd && systemctl start httpd && systemctl enable httpd && systemctl stop firewalld && systemctl disable firewalld && yum clean all
RUN yum makecache && yum install -y nginx && yum clean all && ln -s /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime -f
EXPOSE 80
#ADD html.tar.gz /var/www/
#ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]


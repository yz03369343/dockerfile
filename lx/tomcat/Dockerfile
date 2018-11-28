FROM	192.168.36.252/library/loongson
MAINTAINER Feng <feng.ye@i-soft.com.cn> 
RUN yum makecache && yum install -y tomcat && yum clean all && ln -s /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime -f 
ADD webapps.tar.gz /var/lib/tomcat/
EXPOSE 8080
#ENTRYPOINT [ "systemctl start tomcat"]
ENTRYPOINT ["/usr/libexec/tomcat/server","start"]
#ENTRYPOINT ["/usr/sbin/tomcat"]
#CMD ["start"]

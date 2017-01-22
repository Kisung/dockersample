FROM centos:latest

MAINTAINER 0.1 flask@mz.co.kr

RUN ["yum", "-y", "install", "httpd"]

COPY httpd.conf /etc/httpd/conf/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


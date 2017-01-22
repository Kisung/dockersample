FROM centos:latest

MAINTAINER 0.1 flask@mz.co.kr

LABEL title="WebServerTestImage"

RUN ["yum", "-y", "install", "httpd"]

COPY httpd.conf /etc/httpd/conf/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


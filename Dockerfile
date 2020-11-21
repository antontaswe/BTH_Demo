FROM centos:latest
MAINTAINER gaurav & Anton
Run yum install -y httpd \
ADD ./loxury /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf loxury/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 

FROM centos:latest
MAINTAINER gauravG & Anton
Run yum install -y httpd \
COPY ./loxury /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf loxury/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 

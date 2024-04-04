FROM centos:7
RUN yum update -y && yum install httpd httpd-tools unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
WORKDIR /var/www/html
RUN unzip handtime.zip && rm handtime.zip
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUUND"]

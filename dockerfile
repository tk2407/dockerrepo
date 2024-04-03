FROM centos/httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
WORKDIR /var/www/html
RUN yum install -y unzip && unzip handtime.zip && rm handtime.zip
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUUND"]

FROM centos:8
RUN dnf clean all
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y && yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
WORKDIR /var/www/html
RUN yum install -y unzip && unzip handtime.zip && rm handtime.zip
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUUND"]

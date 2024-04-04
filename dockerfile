FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/handtime.zip /var/www/html
WORKDIR /var/www/html
RUN unzip handtime.zip && rm handtime.zip
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUUND"]

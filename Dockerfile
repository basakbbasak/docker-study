FROM ubuntu:14.04
RUN apt-get update && apt-get install -y apache2
ADD ./test.html /var/www/html/test.html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND

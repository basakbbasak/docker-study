FROM ubuntu:14.04
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND

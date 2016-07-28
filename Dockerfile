FROM debian:jessie

RUN apt-get update && apt-get install -y \
	apache2

ADD index.html /var/www/html/index.html

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80

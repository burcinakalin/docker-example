FROM debian:jessie

RUN apt-get update
RUN apt-get -y install \
	php5 libapache2-mod-php5 apache2

RUN rm -rf /var/www/html/index.html
COPY index.php /var/www/html/index.php 
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]


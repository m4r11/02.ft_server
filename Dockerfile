##########################################################################################
#	Dockerfile	
#						                                    
#	Version 0.1
#	by:@mvaldeta
#	Project: ft_server
#
#	enjoy :)
#########################################################################################
FROM docker/whalesay:latest
LABEL Name=02 Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
##########################################################################################
#	Our container
#########################################################################################
FROM debian:buster
RUN apt-get update && apt-get upgrade -y
#########################################################################################
#	Necessary dependencies, add as you please
#########################################################################################
RUN apt-get install -y nginx mariadb-server openssl vim
RUN	apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring
RUN apt-get install -y wget
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN wget https://wordpress.org/latest.tar.gz
#########################################################################################
#	NGINX
#########################################################################################
COPY ./srcs/nginx.conf /etc/nginx/sites-available/
RUN rm /var/www/html/index.nginx.html
COPY ./srcs/index.nginx.html /var/www/html/
RUN ln -sf /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled
#########################################################################################
#	KEY
#########################################################################################
RUN openssl req -x509 -nodes -days 365 \
	-newkey rsa:2048 -subj "/C=PT/ST=Portugal/L=Lisboa/O=42Lisboa/CN=mvaldeta" \
	-keyout /etc/ssl/private/mvaldeta.key \
	-out /etc/ssl/certs/mvaldeta.crt
#########################################################################################
#	PHP
#########################################################################################
RUN mv phpMyAdmin-5.0.1-english.tar.gz /var/www/html/
WORKDIR /var/www/html/
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin
COPY ./srcs/config.inc.php /var/www/html/phpmyadmin
#########################################################################################
#	WORD-PRESS
#########################################################################################
WORKDIR /
COPY ./srcs/wp-config.php /var/www/html
RUN mv latest.tar.gz /var/www/html/
WORKDIR /var/www/html/
RUN tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
#########################################################################################
#	PERMISSIONS
#########################################################################################
RUN chown -R www-data:www-data /var/www/* && \
	chmod -R 755 /var/www/* && \
	chmod 700 /etc/ssl/private
#########################################################################################
#	COPY SART.SH TO TMP
#########################################################################################
WORKDIR /
COPY ./srcs/init.sh /tmp/
COPY ./srcs/autoindex.sh /tmp/
RUN chmod -R 755 /tmp/autoindex.sh
#########################################################################################
#	START.SH
#########################################################################################
WORKDIR /etc/nginx/sites-available/
CMD bash /tmp/init.sh
#########################################################################################
#	ADD MORE STUFF IF YOU NEED :)
#########################################################################################
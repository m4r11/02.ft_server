FROM debian:buster
LABEL maintainer ="mvaldeta@student.42lisboa.com"

WORKDIR /tmp

# Install update
RUN apt-get update -y && apt-get upgrade -y

# Install wget
RUN apt-get -y install wget

# Install nginx
RUN apt-get -y install nginx

# Install php + extensions
RUN apt-get install -y php php-fpm php-gd php-mysql php-cli php-curl php-json
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz \
    && mkdir /var/www/html/phpmyadmin \
    && tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin

# Key and certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=PT/ST=lx/L=Lisbon/O=42Lisbon/OU=Cluster1/CN=mvaldeta" \
	-keyout /tmp/server.key \
	-out /tmp/server.crt

# MySQL
RUN apt-get -y install mariadb-server

# Nginx config + install wp
COPY default ./etc/nginx/sites-available/default
COPY wp-config.php /var/www/html/wordpress/wp-config.php
COPY db_wordpress db_wordpress
COPY start.sh start.sh
ADD wordpress_config.php /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress

ADD start.sh .
ENTRYPOINT ["/bin/sh", "start.sh"]
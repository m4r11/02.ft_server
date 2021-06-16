#!/bin/bash
#########################################################################
# COMMANDS AKA INIT SERVICES
#########################################################################
#########################################################################
# stop running in case init fails
#########################################################################
set -eu
#########################################################################
# set up message color
#########################################################################
mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out /etc/nginx/ssl/ssl-bundle.crt \
			-keyout /etc/nginx/ssl/ssl-bundle.key \
			-subj "/C=PT/ST=Lisbon/L=Lisbon/O=42 Lisboa/OU=mvaldeta/CN=www.localhost.com"
#########################################################################
service nginx start
nginx -t
service nginx status
#########################################################################
service mysql start
service mysql status
#########################################################################
service php7.3-fpm start
service php7.3-fpm status

# MySQL database setup and configuration
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password

envsubst </root/default.template >/etc/nginx/sites-available/default

bash

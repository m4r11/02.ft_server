#!/bin/bash
#########################################################################
# COMMANDS AKA INIT SERVICES
#########################################################################

envsubst </root/default.template >/etc/nginx/sites-available/default

#########################################################################
# stop running in case init fails
#########################################################################
set -eu
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


bash

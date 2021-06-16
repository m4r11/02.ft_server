#!/bin/bash
#########################################################################
# SETTING UP AUTO-INDEX
#########################################################################
#########################################################################
# stop running in case comands fails
#########################################################################
set -eu
#########################################################################
INDEX=$1
NGINX_CONF=/etc/nginx/sites-available/nginx.conf

if [[ "$INDEX" == "on" || "$INDEX" == "off" ]];
then
	sed -i -E "/autoindex/ s/on|off/$INDEX/" $NGINX_CONF
	if [ "$INDEX" == "on" ]
	then
		sed -i '21 s/^/#/' $NGINX_CONF
	fi
	if [ "$INDEX" == "off" ]
	then
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
		sed -i '21 s/#//' $NGINX_CONF
	fi
	service nginx restart
	echo "Autoindex option is now set to $INDEX"
else
	echo "Please provide a valid value ('on' or 'off') for autoindex"
fi
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

if [[ "$INDEX" == "on" || "$INDEX" == "off" ]];
then
	export AUTOINDEX=$1
	envsubst </root/default.template >/etc/nginx/sites-available/default
	service nginx restart
	echo "Autoindex option is now set to $INDEX"
else
	echo "Please provide a valid value ('on' or 'off') for autoindex"
fi

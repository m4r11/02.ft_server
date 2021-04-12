#!/bin/bash

cp /var/www/mvaldeta/autoindex/nginx.conf /etc/nginx/sites-available/mkristie
service nginx restart
echo "autoindex on"
#!/bin/bash
sudo apt -y install nginx git nano fcgiwrap apache2-utils

echo "Enter Tony Password"
sudo htpasswd -c /etc/nginx/htpasswd tony

sudo cp /home/common/install/nginx  /etc/nginx/sites-available/default

sudo nginx -t

sudo systemctl restart nginx.service

sudo apt -y install php-fpm php-cgi php-common php-pear php-mbstring 

sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.3/fpm/php.ini

sudo systemctl restart php7.3-fpm

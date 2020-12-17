#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Nginx, PHP7.3, MariaDB Server, and Certbot
#########################################################################
apt update -y && apt upgrade -y && apt autoremove -y

apt install -y wget \
nginx \
php7.3 \
php7.3-fpm \
php-mysql \
mariadb-server \
certbot \
python-certbot-nginx

apt purge -y --autoremove apache2

mv /var/www/html /var/www/public
vim /etc/nginx/sites-enabled/default
chown -R chloe:www-data /var/www/public
vim /etc/php/7.3/fpm/pool.d/www.conf
printf "CREATE USER 'chloe'@'localhost' identified by 'R4v3n10';\nGRANT ALL PRIVILEGES on *.* to 'chloe'@'localhost' WITH GRANT OPTION;\nFLUSH PRIVILEGES;" > ~/example.sql
mysql -u root < ~/example.sql

cd /var/www/public
wget https://github.com/vrana/adminer/releases/download/v4.7.7/adminer-4.7.7.php
mv adminer-4.7.7.php adminer.php
chmod 755 adminer.php
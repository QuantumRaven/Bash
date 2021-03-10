#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Grafana, MariaDB, and NGINX
#########################################################################

# Handle trap function for error handling

handle_trap() {
  s=$?
  echo "$0: Error on line $LINENO:
  $BASH_COMMAND"
  exit $s
}

trap handle_trap ERR

# Check if sudo permissions are being used for this script, if not, have user log in with sudo permissions

if [[ "$UID" != "0" ]]; then
  echo "This script has to be run as root (use sudo)" && exit 1
fi

apt install -y apt-transport-https software-properties-common wget gnupg2

wget -q -O - https://packages.grafana.com/gpg.key |  apt-key add -

printf "deb https://packages.grafana.com/oss/deb stable main" |  tee -a /etc/apt/sources.list.d/grafana.list

apt update -y

apt install -y grafana \
mariadb-server \
nginx

systemctl daemon-reload
systemctl start grafana-server
systemctl enable grafana-server

printf "Change ;domain = example.com to domain = localhost \n"

rm /etc/nginx/sites-enabled/default

printf "server {
  listen 80;
  root /usr/share/nginx/html;
  index index.html index.htm;

  location / {
   proxy_pass http://localhost:3000/;
  }
}" | tee -a /etc/nginx/sites-enabled/grafana

systemctl restart nginx
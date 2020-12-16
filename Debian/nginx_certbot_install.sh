#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install nginx and certbot for SSL certificates
#########################################################################
apt install -y nginx-full certbot python-certbot-nginx

certbot --nginx
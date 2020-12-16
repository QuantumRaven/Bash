#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Secure Jitsi install
#########################################################################
apt install -y certbot

/usr/share/jitsi-meet/scripts/install-letsencrypt-cert.sh
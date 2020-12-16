#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Jitsi
#########################################################################
apt update -y && apt upgrade -y && apt autoremove -y

apt install -y apt-transport-https \
gnupg2 \
software-properties-common
apt-add-repository universe

apt update -y && apt upgrade -y

curl https://download.jitsi.org/jitsi-key.gpg.key | sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'

echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null
apt install -y jitsi-meet

./secure_jitsi_install.sh
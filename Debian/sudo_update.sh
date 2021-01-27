#!/bin/bash

####################################
# Original Author: Chloe Carpenter
#
# Role of script: Patch sudo
####################################

apt purge -y sudo
wget https://www.sudo.ws/sudo/dist/packages/1.9.5p2/sudo-ldap_1.9.5-3_deb10_amd64.deb
wget https://www.sudo.ws/sudo/dist/packages/1.9.5p2/sudo-logsrvd_1.9.5-3_deb10_amd64.deb
wget https://www.sudo.ws/sudo/dist/packages/1.9.5p2/sudo-python_1.9.5-3_deb10_amd64.deb
wget https://www.sudo.ws/sudo/dist/packages/1.9.5p2/sudo_1.9.5-3_deb10_amd64.deb
dpkg -i *.deb
apt install -y -f
dpkg -i *.deb
sudo --version
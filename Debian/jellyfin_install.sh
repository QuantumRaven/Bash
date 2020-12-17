#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Jellyfin
#########################################################################
apt install -y apt-transport-https

wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | apt-key add -

echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | tee /etc/apt/sources.list.d/jellyfin.list

apt update -y

apt install -y jellyfin

systemctl enable --now jellyfin
#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Jellyfin
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

apt install -y apt-transport-https

wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | apt-key add -

echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | tee /etc/apt/sources.list.d/jellyfin.list

apt update -y

apt install -y jellyfin

systemctl enable --now jellyfin
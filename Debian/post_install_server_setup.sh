#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install/Uninstall common utilities and programs
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

apt update -y && apt upgrade -y
apt install -y wget \
curl \
vim \
git \
p7zip-full \
mlocate \
acl \
gnupg2 \
man-db \
lsof \
bash-completion

apt purge -y nano && apt remove -y nano

#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Jitsi
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

apt update -y && apt upgrade -y && apt autoremove -y

apt install -y apt-transport-https \
gnupg2 \
software-properties-common
apt-add-repository universe

apt update -y && apt upgrade -y

curl https://download.jitsi.org/jitsi-key.gpg.key | sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'

echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null
apt install -y jitsi-meet

echo "Run ./secure_jitsi_install.sh to secure Jitsi"
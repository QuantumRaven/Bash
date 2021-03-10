#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install Ansible to create a control node on Debian 10
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

apt-get install -y gnupg2

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/ansible.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367  && apt update -y && apt install -y ansible
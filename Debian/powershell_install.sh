#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install PowerShell 7.x
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

wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt update -y
apt install -y powershell

echo "To start PowerShell, type pwsh and press enter \n"
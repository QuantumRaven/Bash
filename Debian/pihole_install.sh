#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: # Install Pi-Hole
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

git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole

cd "Pi-hole/automated install/"

bash basic-install.sh
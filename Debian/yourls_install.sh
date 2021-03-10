#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install YOURLs
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

cd /var/www/public

wget https://github.com/YOURLS/YOURLS/archive/1.7.9.tar.gz

tar xf 1.7.9.tar.gz

mv YOURLS-1.7.9/* .
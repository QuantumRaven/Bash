#!/bin/bash

#########################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Install developer tools to compile from source
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

apt install -y build-essential \
zlib1g-dev \
libncurses5-dev \
libgdbm-dev \
libnss3-dev \
libssl-dev \
libsqlite3-dev \
libreadline-dev \
libffi-dev \
curl \
libbz2-dev

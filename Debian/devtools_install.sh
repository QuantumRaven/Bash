#!/bin/bash

#########################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Install developer tools to compile from source
#########################################################################
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

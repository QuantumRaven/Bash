#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install/Uninstall common utilities and programs
#########################################################################
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

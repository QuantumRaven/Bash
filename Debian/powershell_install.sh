#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install PowerShell 7.x
#########################################################################
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt update -y
apt install -y powershell

echo "To start PowerShell, type pwsh and press enter \n"
#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install PowerShell 7.x
#########################################################################
https://github.com/PowerShell/PowerShell/releases/download/v7.1.0/powershell_7.1.0-1.ubuntu.20.04_amd64.deb
dpkg -i packages-microsoft-prod.deb

apt update -y
apt install -y powershell

echo "To start PowerShell, type pwsh and press enter"

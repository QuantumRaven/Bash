#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: # Install Pi-Hole
#########################################################################
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole

cd "Pi-hole/automated install/"

bash basic-install.sh
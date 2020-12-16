#!/bin/bash

######################################################################### 
# Original Author: Chloe Carpenter
#
# Role of script: Install YOURLs
#########################################################################
cd /var/www/public

wget https://github.com/YOURLS/YOURLS/archive/1.7.9.tar.gz

tar xf 1.7.9.tar.gz

mv YOURLS-1.7.9/* .
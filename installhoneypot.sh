#!/bin/bash

#this will configure you vm with honeypot
#clone repo
git clone https://github.com/dtag-dev-sec/tpotce

#cd into folder
cd tpotce/iso/installer/

#install
./install.sh --type=user

#become root
sudo su

#git clone
git clone https://github.com/dtag-dev-sec/tpotce

#change directory
cd tpotce/iso/installer/

#copy conf file
cp tpot.conf.dist tpot.conf

#install
./install.sh --type=auto --conf=tpot.conf


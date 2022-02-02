#!/bin/bash

############################
# This script download kmonad Keyboard Managment Tools and installing it, use my personal keyboard configurations
# and also set start service
###########################

configdir=/home/root/.config/kmonad/
servicedir=/etc/systemd/system/

wget -O kmonad https://github.com/kmonad/kmonad/releases/download/0.4.1/kmonad-0.4.1-linux

sudo chmod +x kmonad
sudo mv kmonad /usr/bin/

sudo mkdir -p ${configdir}
sudo cp ./kmonad_config/config.kbd ${configdir}

sudo cp ./kmonad_config/kmonad.service ${servicedir}
sudo systemctl daemon-reload
sudo service kmonad start

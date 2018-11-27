#!/bin/bash

# Add atom package repository
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# Refresh repository and install updates for installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install repository software
sudo apt-get install -y atom vim python3-pip gnome-terminal

# Install python modules
pip3 install --user -r requirements.txt

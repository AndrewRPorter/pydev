#!/bin/bash

# Check if running KDE or Gnome
ps -ef | grep gnome

sudo apt-get update
sudo apt-get upgrade

# Install repository software
sudo apt-get install -y vim python3-pip gnome-terminal

# Install python modules
pip3 install --user -r requirements.txt

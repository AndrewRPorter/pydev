#!/bin/bash

# Add atom package repository
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# Refresh repository and install updates for installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install repository software
sudo apt-get install -y git atom vim python3-pip gnome-terminal unzip

# Install atom packages
apm install autocomplete-python

# Install Node.js Version – 7.x
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install npm modules
npm install -g tldr

# Install exa software
wget -P ~ "https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip"
unzip ~/exa-linux-x86_64-0.8.0.zip
sudo mv ~/exa-linux-x86_64 /usr/bin/
rm exa-linux-x86_64-0.8.0.zip

# Install bat software
wget -P ~ "https://github.com/sharkdp/bat/releases/download/v0.9.0/bat-musl_0.9.0_amd64.deb"
sudo dpkg -i ~/bat-musl_0.9.0_amd64.deb
rm ~/bat-musl_0.9.0_amd64.deb

# Install python modules
pip3 install --user -r requirements.txt

# Apply aliases to bashrc file
echo "alias cat='bat'" >> ~/.bashrc
echo "alias man='tldr'" >> ~/.bashrc
echo "alias ls='/usr/bin/exa-linux-x86_64 --long'" >> ~/.bashrc

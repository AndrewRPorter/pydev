#!/bin/bash

# Refresh repository and install updates for installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install repository software
sudo apt-get install -y git vim python3-pip gnome-terminal unzip

# Add atom package repository
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# Install atom
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y atom

# Install atom packages
apm install autocomplete-python

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
pip3 install --user requests django pyyaml boto3 gunicorn jinja2 black tldr

# Apply aliases to bashrc file
echo "alias cat='bat'" >> ~/.bashrc
echo "alias man='tldr'" >> ~/.bashrc
echo "alias ls='/usr/bin/exa-linux-x86_64 --long'" >> ~/.bashrc

# Apply Vim formatting
touch ~/.vimrc
echo "set background=dark" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "colorscheme torte" >> ~/.vimrc

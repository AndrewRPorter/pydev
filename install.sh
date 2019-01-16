#!/bin/bash

# Refresh repository and install updates for installed packages
sudo apt-get update

# Install repository software
sudo apt-get install -y git vim python3-pip gnome-terminal unzip tldr curl cloc tmux

# Install space-vim
curl -sLf https://spacevim.org/install.sh | bash

# Install exa software
wget -P ~ "https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip"
unzip ~/exa-linux-x86_64-0.8.0.zip
sudo mv ~/exa-linux-x86_64 /usr/bin/
rm exa-linux-x86_64-0.8.0.zip

# Install bat software
wget -P ~ "https://github.com/sharkdp/bat/releases/download/v0.9.0/bat-musl_0.9.0_amd64.deb"
sudo dpkg -i ~/bat-musl_0.9.0_amd64.deb
rm ~/bat-musl_0.9.0_amd64.deb

# Install ripgrep software
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb
sudo dpkg -i ~/ripgrep_0.10.0_amd64.deb
rm ~/ripgrep_0.10.0_amd64.deb

# Install neofetch
git clone https://github.com/dylanaraps/neofetch ~/neofetch
cd ~/neofetch
sudo make install
cd ~; rm -rf ~/neofetch

# Install python modules
pip3 install --user requests django flask pyyaml boto3 gunicorn black isort virtualenv pytest

# Apply aliases to bashrc file
echo "alias cat='bat'" >> ~/.bashrc
echo "alias man='tldr'" >> ~/.bashrc
echo "alias ls='/usr/bin/exa-linux-x86_64 --long'" >> ~/.bashrc
echo "alias grep='rg'" >> ~/.bashrc

# Apply Vim formatting
echo "set background=dark" >> ~/.vimrc_back
echo "set number" >> ~/.vimrc_back
echo "set incsearch" >> ~/.vimrc_back
echo "colorscheme torte" >> ~/.vimrc_back

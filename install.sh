#!/bin/bash

# Refresh repository and install updates for installed packages
sudo apt-get update

# Install repository software
sudo apt-get install -y git vim python3-pip tldr curl cloc zsh

# Set zsh as default shell
chsh -s /bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Install vscode
wget -P ~ "https://az764295.vo.msecnd.net/stable/a622c65b2c713c890fcf4fbf07cf34049d5fe758/code_1.34.0-1557957934_amd64.deb"
sudo dpkg -i ~/code_1.34.0-1557957934_amd64.deb
rm ~/code_1.34.0-1557957934_amd64.deb

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
pip3 install --user requests flask pyyaml gunicorn jinja2 black isort virtualenv sklearn pandas numpy matplotlib

# Generate dotfiles
git clone git@github.com:AndrewRPorter/dotfiles.git ~
cd ~/dotfiles
./install.sh
cd ~

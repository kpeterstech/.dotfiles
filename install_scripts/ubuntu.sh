#!/usr/bin/env bash

# This script installs everything that is needed for a Ubuntu/Debian family OS
# all commands that have "sudo sh -c '<command>'" will be run as sudo. All commands
# that do not have that are run as the current user

echo "Some commands I need to run require sudo permission"
echo "Please enter in your password"

sudo sh -c "echo 'Thank you!'"

# update from repositories
sudo sh -c 'apt-get update'

# install all desired programs.
sudo sh -c 'apt-get -y install \
	sudo \
	# need vim-gtk for vim to be able to us system clipboard
	vim-gtk \
	vim \
	zsh \
	tmux \
	git \
	make \
	htop \
	wget \
	curl \
	guake \
	python-pip \
	unrar-free \
	vlc \
	unzip \
	build-essential \
	openssh-server \
	p7zip-full \
	python3-pip \
	tree \
	fdupes \
'

# install latest version of pip
sudo sh -c 'pip3 install --upgrade pip'

# install venv for python3
sudo sh -c 'apt-get install python3-venv'

# install youtube_dl via pip
sudo sh -c 'pip3 install --upgrade youtube_dl'

# upgrades machine
sudo sh -c 'apt-get upgrade -y'

# remove amazon from ubuntu
rm /usr/share/applications/ubuntu-amazon-default.desktop
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/Amazon.user.js
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/manifest.json

# add powerline symbols to user for sexy terminal
sudo sh -c '/bin/bash ~/.dotfiles/install_scripts/powerline_install.sh'

# download github repos
sudo sh -c '/bin/bash ~/.dotfiles/install_scripts/github.sh'

# add symbolic links for zshrc,vimrc,tmux.conf
sudo sh -c '/bin/bash ~/.dotfiles/install_scripts/symlinks.sh'

# adds local 2.5 HDD if on home computer
if [[ -e ~/.dotfiles/private/.2.5_HDD_add.sh ]]; then
		sudo sh -c '/bin/bash ~/.dotfiles/private/.2\.5_HDD_add.sh'
else
		echo "Script to install 2.5 TB HDD not found"
fi

# adds access to local server if on same network
if [[ -e ~/.dotfiles/private/.server_add.sh ]]; then
		sudo sh -c '/bin/bash ~/.dotfiles/private/.server_add.sh'
else
		echo "Script to add server not found"
fi

chsh -s $(which zsh)

# prompt for a reboot
echo ""
echo "================="
echo "TIME FOR A REBOOT"
echo "=================":

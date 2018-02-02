#!/usr/bin/env bash

#run as root for first time install

#update from repositories
apt-get update

#install all desired programs.
apt-get -y install \
	sudo \
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

#install latest version of pip
pip3 install --upgrade pip

#install youtube_dl via pip
pip3 install --upgrade youtube_dl

#upgrades machine
apt-get upgrade -y

# remove amazon from ubuntu
rm /usr/share/applications/ubuntu-amazon-default.desktop
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/Amazon.user.js
rm /usr/share/unity-webapps/userscripts/unity-webapps-amazon/manifest.json

#add powerline symbols to user for sexy terminal
/bin/bash ~/.dotfiles/powerline/powerline_install.sh

#add symbolic links for zshrc,vimrc,tmux.conf,atom
/bin/bash ~/.dotfiles/symlinks.sh

#adds local 2.5 HDD if on home computer
/bin/bash ~/.dotfiles/private/.2\.5_HDD_add.sh

#adds access to local server if on same network
/bin/bash ~/.dotfiles/private/.server_add.sh

#prompt for a reboot
echo ""
echo "================="
echo "TIME FOR A REBOOT"
echo "=================":

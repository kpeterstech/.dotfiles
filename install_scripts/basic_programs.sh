#!/usr/bin/env bash

sudo add-apt-repository universe

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list


sudo apt update
sudo apt upgrade -y
sudo apt -y install vim \
	git \
	htop \
	wget \
	curl \
	vlc \
	unzip \
	build-essential \
	openssh-server \
	p7zip-full \
	tree \
	fdupes \
	gnome-tweak-tool \
	brave-browser \
	python3-pip \


#!/usr/bin/env bash

# place .dotfiles folder in home directory.

# Finds which OS is being used to make sure to install correct software, using correct methods
# Currently, only ubuntu is being used. To add additional OS's (Mac, Arch, CentOs, etc) add a elif
# and make a script for said OS and place it into the 'install_scripts' directory.

OS=uname -o

if [[ OS -eq 'GNU/Linux' ]]; then
	echo "It appears you are on a Linux OS"
	echo "I can't tell exactly which one though"
	echo "1) Ubuntu/Debian/Mint"
	read OS_TYPE

	if [[ OS_TYPE -eq 1]]; then
		echo "Got it, lets get you up to speed"
		bash ~/.dotfiles/install_scripts/ubuntu.sh
	fi
fi

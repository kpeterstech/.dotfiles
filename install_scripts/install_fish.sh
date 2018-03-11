#!/usr/bin/env bash

# install fish PPAA
sudo sh -c 'apt-add-repository ppa:fish-shell/release-2 -y'
sudo sh -c 'apt -y update'
sudo sh -c 'apt -y install fish'

# remove old fish settings (because this is a fresh install there shouldnt be anything of substance)
sudo sh -c 'rm -rf ~/.config/fish/'

# create symlinks for fish
ln -s ~/.dotfiles/fish ~/.config/fish

# install oh-my-fish
curl -L https://get.oh-my.fish | fish

# to get bobthefish theme through oh-my-fish you need to download powerline-patched font
sudo sh -c 'pip install powerline-status'
sudo sh -c 'apt -y install fonts-powerline'
omf install bobthefish

chsh -s $(which fish)


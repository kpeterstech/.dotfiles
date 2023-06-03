#!/usr/bin/env bash

sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt -y update
sudo apt -y install fish
sudo rm -rf ~/.config/fish/
ln -s ~/.dotfiles/fish ~/.config/fish
curl -L https://get.oh-my.fish | fish

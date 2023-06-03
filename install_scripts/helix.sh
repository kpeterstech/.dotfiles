#!/usr/bin/env bash

pip install -U 'python-lsp-server[all]'

sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

ln -s ~/.dotfiles/helix/ ~/.config/
#!/usr/bin/env bash

# backup all atom settings to ~/.dotfiles/atom/config.cson and ~/.dotfiles/atom/keymap.cson

cp -r ~/.atom/config.cson ~/.dotfiles/atom/config.cson
cp -r ~/.atom/keymap.cson ~/.dotfiles/atom/keymap.cson

#!/usr/bin/env bash

# overwrites default atom setting with custom defined user setting
# use atom_settings_backup.sh to automatically create/save your current settings and keymaps

cp -r ~/.dotfiles/atom/config.cson ~/.atom/config.cson
cp -r ~/.dotfiles/atom/keymap.cson ~/.atom/keymap.cson

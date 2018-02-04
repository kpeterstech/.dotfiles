#!/usr/bin/env bash

# insalls all atom packages listed in ~/.dotfiles/atom/atom-packages
# if you want to backup your current packages you can run ~/.dotfiles/bin/atom_package_backup.sh
# Warning! This will overwrite that packages file if one already exists

# exit whenever anything returns a non-zero value

set -e

apm install --packages-file ~/.dotfiles/atom/atom-packages

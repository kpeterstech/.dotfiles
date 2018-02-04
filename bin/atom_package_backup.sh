#!/usr/bin/env bash

# backup all atom packages to ~/.dotfiles/atom/atom-packages
# use this before switching machines, or in case you make many changes

# exit whenever anything returns a non-zero value
set -e

apm list --installed --bare > ~/.dotfiles/atom/atom-packages

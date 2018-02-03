#!/usr/bin/env bash

# clone oh-my-zsh
rm -rf ~/.dotfiles/zsh/oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/zsh

# clone zsh-syntax-highlighting
rm -rf ~/.dotfiles/zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.dotfiles/zsh

# clone powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.dotfiles/zsh/oh-my-zsh/custom/themes/powerlevel9k

# clone Vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/vim/bundle/Vundle.vim/

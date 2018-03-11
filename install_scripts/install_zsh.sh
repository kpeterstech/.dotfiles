#!/usr/bin/env bash

echo "Downloading and configuring zsh"

# install zsh
sudo sh -c 'apt -y install zsh'
sudo sh -c 'apt -y upgrade'

# create symlink for zsh and oh-my-zsh
echo "Creating symbolic link for zshrc"
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
echo "...done"

echo "Creating symbolic link for oh-my-zsh"
ln -s ~/.dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh
echo "...done"

# clone oh-my-zsh to .dotfiles dir
rm -rf ~/.dotfiles/zsh/oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/zsh

# clone zsh-syntax-highlighting
rm -rf ~/.dotfiles/zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.dotfiles/zsh

# clone powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.dotfiles/zsh/oh-my-zsh/custom/themes/powerlevel9k


echo "setting zsh to default user shell"
chsh -s $(which zsh)

#!/usr/bin/env bash

##############
#This script moves all original rc files to a .dotfiles_old directory, then sets up symlinks for new rc files
##############

# Variables

dir=~/.dotfiles   #downloaded dotfile directory
olddir=~/.dotfiles_old   #where all the original rc files (if there were any) are moved in case an error occures
files="bashrc vimrc zshrc oh-my-zsh tmux.conf"  #list of the files that will be targeted

#create .dotfiles_old directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#moving old dotfiles to .dotfiles_old directory
for file in $files; do
	echo "Moving any exisiting dotfiles from ~ to $olddir"
	mv ~/.$file ~/.dotfiles_old/
done

#create symlinks
echo "Creating symbolic link for zshrc"
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
echo "...done"

echo "Creating symbolic link for oh-my-zsh"
ln -s ~/.dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh
echo "...done"

echo "Creating symbolic link for vimrc"
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
echo "...done"

echo "Creating symbolic link for tmux"
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
echo "...done"

echo "Creating symbolic link for ~/bin/"
ln -s ~/.dotfiles/bin ~/bin
echo "...done"

echo "All symlinks created"

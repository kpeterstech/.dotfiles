#!/usr/bin/env bash

sudo apt -y install openssl

sudo apt -y install libssl-dev

#install cargo
curl https://sh.rustup.rs -sSf | s

source "$HOME/.cargo/env"

cd ~/.config/
git clone https://github.com/alacritty/alacritty.git
cd alacritty
sudo apt -y install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo build --release
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
cd ~

cargo install --locked zellij

cargo install fd-find

cargo install ripgrep

cargo install exa

cargo install du-dust

cargo install bat

cargo install tokei

cargo install sd

cargo install erdtree

sudo apt install openssl

sudo apt install libssl-dev

sudo apt install cmake

#install cargo
curl https://sh.rustup.rs -sSf | sh

cargo install sccache

cd ~/.config/
git clone https://github.com/alacritty/alacritty.git
cd alacritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo build --release
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
cd ~

cargo install nu

ln -s ~/.dotfiles/nushell/ ~/.config/nushell 

cargo install --locked zellij

# cargo install starship
#
# mkdir ~/.cache/
#
# ln -s ~/.dotfiles/starship/ ~/.cache/starship/
#
# starship init nu | save -f ~/.cache/starship/init.nu

cargo install zoxide --locked
zoxide init nushell | save -f ~/.zoxide.nu

cargo install fd-find

cargo install exa

cargo install du-dust

cargo install bat

cargo install tokei

cargo install sd

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

oh-my-posh init nu --config ~/.poshthemes/powerlevel10k_rainbow.omp.json --print | save -f ~/.oh-my-posh-theme.nu



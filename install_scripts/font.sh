#!/usr/bin/env bash

# wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf 

# wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

# mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/

# mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/Hack.zip
unzip Hack.zip -d Hack
sudo mv Hack/*.ttf /usr/local/share/fonts/
rm -rf Hack.zip Hack/

fc-cache -vf ~/.fonts

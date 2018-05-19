#!/bin/bash

cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d
# clean fonts cache
fc-cache -vf ~/.fonts/
# move config file
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

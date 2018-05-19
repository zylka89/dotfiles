#!/bin/bash

echo "removing unnecessary packages"
sudo apt-get autoremove

echo "updating system"
sudo apt-get update
sudo apt-get upgrade

# creating apps folder
cd
mkdir -p apps

echo "git"
sudo apt-get install -y git

echo "synaptic"
sudo apt-get install -y synaptic

echo "tmux"
sudo apt-get install -y libevent-dev libncurses-dev make
cd apps
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar xvzf tmux-2.3.tar.gz
rm tmux-2.3.tar.gz
cd tmux-2.3/
./configure && make
sudo make install
cd
echo "tmux version:"
tmux -V

echo "terminator"
sudo apt-get install -y terminator

echo "zsh"
sudo apt-get install -y zsh
chsh -s `which zsh`
sudo chsh -s `which zsh`

echo "gparted"
sudo apt-get install -y gparted

echo "guake"
sudo apt-get install -y guake

echo "conky"
sudo apt-get install -y conky

echo "htop"
sudo apt-get install -y htop

echo "spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

echo "python libraries"
sudo apt-get install -y python-numpy

echo "ctags"
sudo apt-get install exuberant-ctags

echo "clementine"
sudo apt-add-repository ppa:me-davidsansome/clementine
sudo apt-get update
sudo apt-get install -y clementine

echo "thunderbird"
sudo apt-get install -y thunderbird

echo "vlc"
sudo apt-get install -y vlc

echo "keepass2"
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install -y keepass2

echo "chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

echo "gnome extension for chrome"
sudo apt-get install -y chrome-gnome-shell

echo "nmap"
sudoo apt-get install iy nmap

echo "timeshift"
add-apt-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install -y timeshift

echo "aptik"
sudo apt-get install -y aptik

echo "cronopete"
sudo apt-add-repository ppa:rastersoft-gmail/cronopetedev
sudo apt-get update
sudo apt-get install -y cronopete

echo "latex"
sudo apt-get install -y texlive-full

echo "octave"
sudo add-apt-repository ppa:octave/stable
sudo apt-get update
sudo apt-get install -y octave

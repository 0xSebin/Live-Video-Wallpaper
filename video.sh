#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt-get install xorg-dev build-essential libx11-dev x11proto-xext-dev libxrender-dev libxext-dev -y
git clone https://github.com/ujjwal96/xwinwrap.git
cd xwinwrap
make
sudo make install
make clean
cd ..
apt install mpv
clear
echo -e "\e[1;31mFor video Wallpaper use this command \e[0m"
echo -e "xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -- mpv -wid WID --loop --no-audio ~/Videos/video.mp4 "
echo -e "\e[1;31mFor gif wallpaper use this command  \e[0m"
echo -e "xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -- gifview -w WID ~/mygif.gif -a "
echo -e "Change video and gif location while using "

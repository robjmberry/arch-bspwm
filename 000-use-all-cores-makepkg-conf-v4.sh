#!/bin/bash
# credits to Soehub
# https://gist.github.com/soehub/fc07b86e2292c562328ee0dc2aadf740
set -e

sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm --needed sudo

numberofcores=$(grep -c ^processor /proc/cpuinfo)
sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j'$(($numberofcores+1))'"/g' /etc/makepkg.conf;
sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T '"$numberofcores"' -z -)/g' /etc/makepkg.conf

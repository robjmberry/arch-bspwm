#!/bin/bash
set -e


sudo pacman -Syyu --noconfirm
sudo pacman -S ca-certificates ca-certificates-mozilla ca-certificates-utils --noconfirm

dir=$(pwd)
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd $dir
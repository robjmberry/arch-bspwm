#!/bin/bash
set -e

cd /tmp

sudo pacman -Syyu --noconfirm
pacman -S ca-certificates ca-certificates-cacert ca-certificates-mozilla ca-certificates-utils --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~/
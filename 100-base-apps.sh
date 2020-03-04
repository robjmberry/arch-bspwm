#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed xorg-server
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter

#installing desktop environment
sudo pacman -S bspwm sxhkd --noconfirm --needed
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

#Software
sudo pacman -S --noconfirm --needed \
    rxvt-unicode \
    chromium \
    neovim \
    dmenu \
    blender \
    krita \
    inkscape \
    ranger \
    xorg-xrdb


sudo mkdir -p /etc/skel/.config/bspwm
sudo mkdir -p /etc/skel/.config/sxhkd

sudo cp /usr/share/doc/bspwm/examples/bspwmrc /etc/skel/.config/bspwm
sudo cp ./configs/sxhkdrc /etc/skel/.config/sxhkd

